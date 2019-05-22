#pragma once

#include <glm/glm.hpp>
#include <string>
#include <vector>

#include "Mesh.hpp"


class Terrain {
public:
    Terrain();

    /**
     * Construct Terrain object by loading two files:
     *
     * @param path_heights heights (1-channel image)
     * @param path_textures textures (4-channel image), where each channel is responsible for its own texture
     * @param max_height maximum height (all heights will be scaled appropriately)
     */
    Terrain(std::string path_heights, std::string path_textures, int max_height=50);

    /**
     * Build a net of triangles for the loaded terrain object
     *
     * @return this
     */
    Terrain& triangulize();

    /**
     * Get a Mesh (MeshPtr) representing this Terrain
     *
     * @return Mesh object with the following attributes:
     *  [0]: vertex positions (vec3)
     *  [1]: vertex normals, normalized (vec3)
     *  [2]: vertex texture positions (vec2)
     *  [3]: vertex texture mix, normalized (vec4)
     */
    MeshPtr mesh();

    int get_width() const;
    int get_length() const;
    int get_height() const;

    /**
     * Get height of Terrain at given position
     */
    float get_height_at(int x, int y) const;

private:
    int x_size;
    int y_size;
    int h_max;

    std::vector<float> heights;
    std::vector<glm::vec4> texture_levels;

    std::vector<glm::vec3> tr_vertices;
    std::vector<glm::vec3> tr_normals;
    std::vector<glm::vec2> tr_uvs;
    std::vector<glm::vec4> tr_texture_levels;

    /**
     * Get array index
     */
    int aindex(int x, int y) const;
};
