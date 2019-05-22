#include "Terrain.hpp"

#include "SOIL2.h"

#include <iostream>
#include <exception>
#include <fstream>
#include <cmath>
#include <set>
#include <map>


Terrain::Terrain() {}


int Terrain::aindex(int x, int y) const {
    return y * x_size + x;
}


Terrain::Terrain(std::string path_heights, std::string path_textures, int max_height) {
    // Load images and read data from them
    {
        int channels;
        unsigned char* image;
        int x_rsize, y_rsize;

        image = SOIL_load_image(path_heights.c_str(), &x_rsize, &y_rsize, &channels, SOIL_LOAD_L);
        if (!image) {
            throw std::runtime_error(std::string("SOIL load error (heights): ") + std::string(SOIL_last_result()));
        }
        x_size = x_rsize;
        y_size = y_rsize;
        h_max = max_height;
        for (int y = 0; y < y_size; y++) {
            for (int x = 0; x < x_size; x++) {
                this->heights.push_back((float(image[aindex(x, y)]) / 255.0f) * h_max);
            }
        }
        SOIL_free_image_data(image);

        image = SOIL_load_image(path_textures.c_str(), &x_rsize, &y_rsize, &channels, SOIL_LOAD_RGBA);
        if (!image) {
            throw std::runtime_error(std::string("SOIL load error (textures): ") + std::string(SOIL_last_result()));
        }
        if (x_size != x_rsize || y_size != y_rsize) {
            throw std::runtime_error(std::string("Heights and texture sizes do not match"));
        }
        for (int y = 0; y < y_size; y++) {
            for (int x = 0; x < x_size; x++) {
                int img_i = (aindex(x, y)) * 4;
                this->texture_levels.emplace_back(glm::normalize(glm::vec4(
                        image[img_i], image[img_i + 1], image[img_i + 2], 255 - image[img_i + 3]
                )));
            }
        }
        SOIL_free_image_data(image);
    }
}

Terrain &Terrain::triangulize() {
    // Build vertex net
    {
        for (int y_sq = 0; y_sq < y_size - 1; y_sq++) {
            for (int x_sq = 0; x_sq < x_size - 1; x_sq++) {
                for (int i_tr = 0; i_tr < 2; i_tr++) {
                    // Calculate vertices' positions
                    glm::vec3 points[3];
                    points[0] = glm::vec3(float(x_sq + i_tr), float(y_sq + i_tr), heights[aindex(x_sq + i_tr, y_sq + i_tr)]);
                    points[1] = glm::vec3(float(x_sq + 1), float(y_sq), heights[aindex(x_sq + 1, y_sq)]);
                    points[2] = glm::vec3(float(x_sq), float(y_sq + 1), heights[aindex(x_sq, y_sq + 1)]);
                    // Calculate normals (the same in this simplified version)
                    glm::vec3 normals[3];

                    // Terrain type. Option 1: triangular, option 2: Real, but no lighting
                    //normals[0] = glm::normalize(glm::vec3(0.0f, 0.0f, 1.0f));
                    normals[0] = glm::normalize(glm::cross(points[1 - i_tr] - points[i_tr], points[2] - points[1]));

                    normals[1] = glm::vec3(normals[0]);
                    normals[2] = glm::vec3(normals[0]);
                    // Calculate UV coordinates
                    glm::vec2 uvs[3];
                    uvs[0] = glm::vec2(float(i_tr), float(i_tr));
                    uvs[1] = glm::vec2(1.0f, 0.0f);
                    uvs[2] = glm::vec2(0.0f, 1.0f);
                    // Copy texture levels
                    glm::vec4 texlevels[3];
                    texlevels[0] = glm::vec4(texture_levels[aindex(x_sq + i_tr, y_sq + i_tr)]);
                    texlevels[1] = glm::vec4(texture_levels[aindex(x_sq + 1, y_sq)]);
                    texlevels[2] = glm::vec4(texture_levels[aindex(x_sq, y_sq + 1)]);
                    // Emplace into trianges array
                    for (int i = 0; i < 3; i++) {
                        tr_vertices.emplace_back(points[i]);
                        tr_normals.emplace_back(normals[i]);
                        tr_uvs.emplace_back(uvs[i]);
                        tr_texture_levels.emplace_back(texlevels[i]);
                    }
                }
            }
        }
    }

    return *this;
}

MeshPtr Terrain::mesh() {
    // Prepare Mesh object
    MeshPtr result = std::make_shared<Mesh>();
    result->setPrimitiveType(GL_TRIANGLES);

    // Allocate buffers
    DataBufferPtr buf[4];
    for (auto &b : buf) {
        b = std::make_shared<DataBuffer>(GL_ARRAY_BUFFER);
    }
    buf[0]->setData(tr_vertices.size() * sizeof(float) * 3, &tr_vertices[0].x);
    buf[1]->setData(tr_normals.size() * sizeof(float) * 3, &tr_normals[0].x);
    buf[2]->setData(tr_uvs.size() * sizeof(float) * 2, &tr_uvs[0].x);
    buf[3]->setData(tr_texture_levels.size() * sizeof(float) * 4, &tr_texture_levels[0].x);

    // Point mesh internals to buffers
    result->setVertexCount((GLuint)(tr_vertices.size()));
    result->setAttribute(0, 3, GL_FLOAT, GL_FALSE, 0, 0, buf[0]);
    result->setAttribute(1, 3, GL_FLOAT, GL_FALSE, 0, 0, buf[1]);
    result->setAttribute(2, 2, GL_FLOAT, GL_FALSE, 0, 0, buf[2]);
    result->setAttribute(3, 4, GL_FLOAT, GL_FALSE, 0, 0, buf[3]);

    return result;
}

int Terrain::get_width() const {
    return y_size;
}

int Terrain::get_length() const {
    return x_size;
}

int Terrain::get_height() const {
    return h_max;
}

float Terrain::get_height_at(int x, int y) const {
    return heights[aindex(x, y)];
}