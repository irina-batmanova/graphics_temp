# Install script for directory: /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/libimgui.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/imgui" TYPE FILE FILES
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imconfig.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_internal.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/stb_rect_pack.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/stb_textedit.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/stb_truetype.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_impl_glfw_gl3.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/Application.cpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/Application.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/Common.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/Mesh.cpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/Mesh.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/ShaderProgram.cpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/ShaderProgram.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/Texture.cpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/libmiptgl/Texture.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/Camera.cpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/Camera.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/Terrain.cpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/Terrain.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/../../task2/599Nifantova/main.cpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/imgui" TYPE FILE FILES "/home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imguiConfig.cmake")
endif()

