# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/irina/8sem/computer_graphics/gl_tasks2019

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/irina/8sem/computer_graphics/gl_tasks2019

# Include any dependencies generated for this target.
include external/imgui/CMakeFiles/imgui.dir/depend.make

# Include the progress variables for this target.
include external/imgui/CMakeFiles/imgui.dir/progress.make

# Include the compile flags for this target's objects.
include external/imgui/CMakeFiles/imgui.dir/flags.make

external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o: external/imgui/imgui.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui.cpp

external/imgui/CMakeFiles/imgui.dir/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui.cpp > CMakeFiles/imgui.dir/imgui.cpp.i

external/imgui/CMakeFiles/imgui.dir/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui.cpp -o CMakeFiles/imgui.dir/imgui.cpp.s

external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o: external/imgui/imgui_demo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui_demo.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_demo.cpp

external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_demo.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_demo.cpp > CMakeFiles/imgui.dir/imgui_demo.cpp.i

external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_demo.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_demo.cpp -o CMakeFiles/imgui.dir/imgui_demo.cpp.s

external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o: external/imgui/imgui_draw.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui_draw.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_draw.cpp

external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_draw.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_draw.cpp > CMakeFiles/imgui.dir/imgui_draw.cpp.i

external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_draw.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_draw.cpp -o CMakeFiles/imgui.dir/imgui_draw.cpp.s

external/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o: external/imgui/imgui_impl_glfw_gl3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object external/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_impl_glfw_gl3.cpp

external/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_impl_glfw_gl3.cpp > CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.i

external/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/imgui_impl_glfw_gl3.cpp -o CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.s

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.o: task2/599Nifantova/libmiptgl/Application.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Application.cpp

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Application.cpp > CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.i

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Application.cpp -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.s

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.o: task2/599Nifantova/libmiptgl/Mesh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Mesh.cpp

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Mesh.cpp > CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.i

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Mesh.cpp -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.s

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.o: task2/599Nifantova/libmiptgl/ShaderProgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/ShaderProgram.cpp

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/ShaderProgram.cpp > CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.i

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/ShaderProgram.cpp -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.s

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.o: task2/599Nifantova/libmiptgl/Texture.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Texture.cpp

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Texture.cpp > CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.i

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/libmiptgl/Texture.cpp -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.s

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.o: task2/599Nifantova/Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/Camera.cpp

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/Camera.cpp > CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.i

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/Camera.cpp -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.s

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.o: task2/599Nifantova/Terrain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/Terrain.cpp

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/Terrain.cpp > CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.i

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/Terrain.cpp -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.s

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.o: external/imgui/CMakeFiles/imgui.dir/flags.make
external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.o: task2/599Nifantova/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.o"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.o -c /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/main.cpp

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.i"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/main.cpp > CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.i

external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.s"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/irina/8sem/computer_graphics/gl_tasks2019/task2/599Nifantova/main.cpp -o CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.s

# Object files for target imgui
imgui_OBJECTS = \
"CMakeFiles/imgui.dir/imgui.cpp.o" \
"CMakeFiles/imgui.dir/imgui_demo.cpp.o" \
"CMakeFiles/imgui.dir/imgui_draw.cpp.o" \
"CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o" \
"CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.o" \
"CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.o" \
"CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.o" \
"CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.o" \
"CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.o" \
"CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.o" \
"CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.o"

# External object files for target imgui
imgui_EXTERNAL_OBJECTS =

external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/imgui.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/imgui_demo.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/imgui_draw.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/imgui_impl_glfw_gl3.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Application.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Mesh.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/ShaderProgram.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/libmiptgl/Texture.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Camera.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/Terrain.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/__/__/task2/599Nifantova/main.cpp.o
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/build.make
external/imgui/libimgui.a: external/imgui/CMakeFiles/imgui.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/irina/8sem/computer_graphics/gl_tasks2019/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX static library libimgui.a"
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean_target.cmake
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imgui.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/imgui/CMakeFiles/imgui.dir/build: external/imgui/libimgui.a

.PHONY : external/imgui/CMakeFiles/imgui.dir/build

external/imgui/CMakeFiles/imgui.dir/clean:
	cd /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui && $(CMAKE_COMMAND) -P CMakeFiles/imgui.dir/cmake_clean.cmake
.PHONY : external/imgui/CMakeFiles/imgui.dir/clean

external/imgui/CMakeFiles/imgui.dir/depend:
	cd /home/irina/8sem/computer_graphics/gl_tasks2019 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/irina/8sem/computer_graphics/gl_tasks2019 /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui /home/irina/8sem/computer_graphics/gl_tasks2019 /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui /home/irina/8sem/computer_graphics/gl_tasks2019/external/imgui/CMakeFiles/imgui.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : external/imgui/CMakeFiles/imgui.dir/depend

