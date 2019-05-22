//#include "Application.hpp"
//#include "LightInfo.hpp"
//#include "Mesh.hpp"
//#include "ShaderProgram.hpp"
//#include "Texture.hpp"
//
//#include "Camera.hpp"
//#include "Terrain.hpp"
//
//#include <iostream>
//#include <sstream>
//#include <vector>
//
//
//class GraphicsApplication : public Application {
//private:
//    /// World (terrain)
//    struct {
//        Terrain terrain;
//        MeshPtr mesh;
//        ShaderProgramPtr shader;
//        TexturePtr textures[4];
//        GLuint samplers[4];
//    } world;
//
//    /// Sun
//    LightInfo sun;
//
//    /// Camera
//    CameraPtr camera;
//    enum CameraMode {
//        Free,
//        Binded
//    } camera_mode;
//
//
//public:
//	GraphicsApplication() {
//	    // Construct and load(!) terrain
//	    world.terrain = Terrain(
//	            std::string("592LeskinData2/hmap.png"),
//	            std::string("592LeskinData2/tmap.png")
//        );
//
//	    // Prepare camera
//        camera = std::make_shared<Camera>(
//                glm::vec3(
//                        world.terrain.get_length() / 2.0f,
//                        world.terrain.get_width() / 2.0f,
//                        world.terrain.get_height() * 1.05f
//                )
//        );
//	    camera_mode = Free;
//
//	    // Prepare sun
//	    sun.position = glm::vec3(world.terrain.get_length(), world.terrain.get_width(), world.terrain.get_height());
//	}
//
//    void makeScene() override {
//	    // Initialize application
//        Application::makeScene();
//
//        // Initialize world
//        world.mesh = world.terrain.triangulize().mesh();
//		world.mesh->setModelMatrix(glm::translate(glm::mat4(1.0f), glm::vec3(0, 0, 0)));
//        {
//		    world.textures[0] = loadTexture("592LeskinData2/textures/0.png");  // This must be a special texture (snow)
//            world.textures[1] = loadTexture("592LeskinData2/textures/1.png");
//            world.textures[2] = loadTexture("592LeskinData2/textures/2.png");
//            world.textures[3] = loadTexture("592LeskinData2/textures/3.png");
//		}
//        glGenSamplers(4, world.samplers);
//        for (GLuint sampler : world.samplers) {
//            glSamplerParameteri(sampler, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
//            glSamplerParameteri(sampler, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
//            glSamplerParameteri(sampler, GL_TEXTURE_WRAP_S, GL_REPEAT);
//            glSamplerParameteri(sampler, GL_TEXTURE_WRAP_T, GL_REPEAT);
//        }
//        world.shader = std::make_shared<ShaderProgram>(
//                "599NifantovaData2/common.vert",
//                "599NifantovaData2/common.frag"
//        );
//
//		// Initialize sun
//        sun.ambient = glm::vec3(0.7, 0.7, 0.7);
//        sun.diffuse = glm::vec3(0.0, 0.0, 0.0);
//        sun.specular = glm::vec3(1.0, 1.0, 1.0);
//    }
//
//    void updateGUI() override {
//        Application::updateGUI();
//
//        ImGui::SetNextWindowPos(ImVec2(0, 0), ImGuiSetCond_FirstUseEver);
//        if (ImGui::Begin("Terrain", nullptr, ImGuiWindowFlags_AlwaysAutoResize))
//        {
//            ImGui::Text("FPS %.1f", ImGui::GetIO().Framerate);
//
//            if (ImGui::CollapsingHeader("Light"))
//            {
//                ImGui::ColorEdit3("ambient", glm::value_ptr(sun.ambient));
//                ImGui::ColorEdit3("diffuse", glm::value_ptr(sun.diffuse));
//                ImGui::ColorEdit3("specular", glm::value_ptr(sun.specular));
//            }
//	        ImGui::Text("Camera mode");
//	        ImGui::RadioButton("Free", reinterpret_cast<int*>(&camera_mode), static_cast<int>(Free));
//	        ImGui::RadioButton("Terrain", reinterpret_cast<int*>(&camera_mode), static_cast<int>(Binded));
//
//	        glm::vec3 pos = _cameraMover->getPosition();
//	        ImGui::Text("Position: %.1f %.1f %.1f", pos.x, pos.y, pos.z );
//        }
//        ImGui::End();
//    }
//
//    void draw() override {
//	    if (camera_mode == Binded) {
//            glm::vec3 pos = camera->getPosition();
//            int posXi = int(pos.x);
//            int posYi = int(pos.y);
//            if (!(posXi >= world.terrain.get_length() || posYi >= world.terrain.get_width() || posXi < 0 || posYi < 0)) {
//                pos.z = world.terrain.get_height_at(posXi, posYi) + 1.0f;
//                camera->setPosition(pos);
//            }
//	    }
//        _cameraMover = camera;
//        _camera = camera->cameraInfo();
//
//	    // Prepare screen
//        {
//            int w, h;
//            glfwGetFramebufferSize(_window, &w, &h);
//            glViewport(0, 0, w, h);
//        }
//        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
//
//	    //
//        // Draw the world
//        //
//
//        // Pass variables to shader
//        world.shader->use();
//        world.shader->setMat4Uniform("viewMatrix", _camera.viewMatrix);
//        world.shader->setMat4Uniform("projectionMatrix", _camera.projMatrix);
//	    world.shader->setVec3Uniform("light.pos", glm::vec3(_camera.viewMatrix * glm::vec4(sun.position, 1.0)));
//        world.shader->setVec3Uniform("light.La", sun.ambient);
//        world.shader->setVec3Uniform("light.Ld", sun.diffuse);
//        world.shader->setVec3Uniform("light.Ls", sun.specular);
//        world.shader->setMat4Uniform("modelMatrix", world.mesh->modelMatrix());
//        world.shader->setMat3Uniform("normalToCameraMatrix", glm::transpose(glm::inverse(glm::mat3(_camera.viewMatrix * world.mesh->modelMatrix()))));
//
//        // Load textures
//        glActiveTexture(GL_TEXTURE0);
//        glBindSampler(0, world.samplers[0]);
//        world.textures[0]->bind();
//        world.shader->setIntUniform("samplers.s0", 0);
//        glActiveTexture(GL_TEXTURE1);
//        glBindSampler(1, world.samplers[1]);
//        world.textures[1]->bind();
//        world.shader->setIntUniform("samplers.s1", 1);
//        glActiveTexture(GL_TEXTURE2);
//        glBindSampler(2, world.samplers[2]);
//        world.textures[2]->bind();
//        world.shader->setIntUniform("samplers.s2", 2);
//        glActiveTexture(GL_TEXTURE3);
//        glBindSampler(3, world.samplers[3]);
//        world.textures[3]->bind();
//        world.shader->setIntUniform("samplers.s3", 3);
//
//        world.mesh->draw();
//
//        // Unbind textures
//        glBindSampler(0, 0);
//        glBindSampler(1, 0);
//        glBindSampler(2, 0);
//        glBindSampler(3, 0);
//
//        // Disallow shader usage
//        glUseProgram(0);
//    }
//};
//
//
//int main() {
//    GraphicsApplication app;
//    app.start();
//    return 0;
//}
#include <assimp/cimport.h>

int main() {
    return 0;
}