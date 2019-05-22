#version 330

uniform mat4 modelMatrix;
uniform mat4 viewMatrix;
uniform mat4 projectionMatrix;

uniform mat3 normalToCameraMatrix;

layout(location = 0) in vec3 vertexPosition;
layout(location = 1) in vec3 vertexNormal;
layout(location = 2) in vec2 vertexTexCoord;
layout(location = 3) in vec4 vertexTexMix;

out vec3 normalCamSpace; // Vertex normal
out vec4 posCamSpace; // Vertex coordinates
out vec2 texCoord; // UV coordinates
out vec4 texMix; // Texture levels mix


void main()
{
	texCoord = vertexTexCoord;
    texMix = vertexTexMix;

	posCamSpace = viewMatrix * modelMatrix * vec4(vertexPosition, 1.0);
	normalCamSpace = normalize(normalToCameraMatrix * vertexNormal);

	gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(vertexPosition, 1.0);
}