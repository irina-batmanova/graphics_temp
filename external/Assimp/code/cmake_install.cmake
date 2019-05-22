# Install script for directory: /home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code

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
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.4.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/irina/8sem/computer_graphics/gl_tasks2019/lib/libassimp.so.4.1.0"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/lib/libassimp.so.4"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.4.1.0"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so.4"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/irina/8sem/computer_graphics/gl_tasks2019/lib/libassimp.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libassimp.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xassimp-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp" TYPE FILE FILES
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/anim.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/ai_assert.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/camera.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/color4.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/color4.inl"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/config.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/defs.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/Defines.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/cfileio.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/light.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/material.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/material.inl"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/matrix3x3.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/matrix3x3.inl"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/matrix4x4.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/matrix4x4.inl"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/mesh.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/postprocess.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/quaternion.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/quaternion.inl"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/scene.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/metadata.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/texture.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/types.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/vector2.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/vector2.inl"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/vector3.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/vector3.inl"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/version.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/cimport.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/importerdesc.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/Importer.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/DefaultLogger.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/ProgressHandler.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/IOStream.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/IOSystem.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/Logger.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/LogStream.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/NullLogger.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/cexport.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/Exporter.hpp"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/DefaultIOStream.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/DefaultIOSystem.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/SceneCombiner.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xassimp-devx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/assimp/Compiler" TYPE FILE FILES
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/Compiler/pushpack1.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/Compiler/poppack1.h"
    "/home/irina/8sem/computer_graphics/gl_tasks2019/external/Assimp/code/../include/assimp/Compiler/pstdint.h"
    )
endif()

