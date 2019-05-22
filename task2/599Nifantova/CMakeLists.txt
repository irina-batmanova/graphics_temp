set(SRC_FILES
#        libmiptgl/Application.cpp
#        libmiptgl/Mesh.cpp
#        libmiptgl/ShaderProgram.cpp
#        libmiptgl/Texture.cpp
#        Terrain.cpp
#        Camera.cpp
        main.cpp

        )

MAKE_OPENGL_TASK(599Nifantova 2 "${SRC_FILES}")

#target_include_directories(599Nifantova 2 PUBLIC libmiptgl/)