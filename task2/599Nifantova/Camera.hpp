#pragma once

#define GLM_ENABLE_EXPERIMENTAL

#include <memory>
#include <string>
#include <iostream>

#include <GL/glew.h>
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>
#include <glm/gtx/transform.hpp>
#include <glm/gtx/quaternion.hpp>
#include <GLFW/glfw3.h>

#include "imgui.h"


struct CameraInfo
{
    glm::mat4 viewMatrix;
    glm::mat4 projMatrix;
};


/**
 * Free-moving camera
 */
class Camera
{
public:
    Camera();

    explicit Camera(glm::vec3 pos);

    CameraInfo cameraInfo() const;

    void handleKey(GLFWwindow* window, int key, int scancode, int action, int mods);

    void handleMouseMove(GLFWwindow* window, double xpos, double ypos);

    void handleScroll(GLFWwindow* window, double xoffset, double yoffset);

    void update(GLFWwindow* window, double dt);

    glm::vec3 getPosition();

    void setPosition(glm::vec3 pos);

private:
    CameraInfo _camera;

    glm::vec3 _pos;
    glm::quat _rot;

    const float _near = 0.1f;
    const float _far = 100.0f;

    double _oldXPos = 0.0;
    double _oldYPos = 0.0;
};


using CameraPtr = std::shared_ptr<Camera>;
