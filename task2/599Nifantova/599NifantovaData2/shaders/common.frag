#version 330

const float glareShininess = 0.66;


uniform struct LightInfo
{
	vec3 pos;  //положение источника света в системе координат ВИРТУАЛЬНОЙ КАМЕРЫ!
	vec3 La;  //цвет и интенсивность окружающего света
	vec3 Ld;  //цвет и интенсивность диффузного света
	vec3 Ls;  //цвет и интенсивность бликового света
} light;

uniform struct Samplers
{
    sampler2D s0;
    sampler2D s1;
    sampler2D s2;
    sampler2D s3;
} samplers;


in vec3 normalCamSpace;
in vec4 posCamSpace;
in vec2 texCoord;
in vec4 texMix;

out vec4 fragColor;


void main()
{
    vec3 texMixColor =
        texture(samplers.s0, texCoord).rgb * texMix[0] +
        texture(samplers.s1, texCoord).rgb * texMix[1] +
        texture(samplers.s2, texCoord).rgb * texMix[2] +
        texture(samplers.s3, texCoord).rgb * texMix[3];

	vec3 lightVec = normalize(light.pos - posCamSpace.xyz);
	vec3 normal = normalize(normalCamSpace);
	float NdotL = max(dot(normal, lightVec), 0.0);

    texMixColor *= light.La + light.Ld * NdotL;

    // Add glare
	if (NdotL > 0.0) {
		vec3 bisector = normalize(lightVec + normalize(-posCamSpace.xyz));
		float blinnTerm = max(dot(normal, bisector), 0.0);
        if (blinnTerm > 0.0) {
            blinnTerm = pow(blinnTerm, 128);
            texMixColor += light.Ls * glareShininess * blinnTerm * max(texMix[0], 0.1f);
        }
	}

	fragColor = vec4(texMixColor, 0.5);
}
