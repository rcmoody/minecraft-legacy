#version 450

layout(binding = 0) uniform UniformBufferObject {
    mat4 view;
    mat4 proj;
} ubo;

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec2 inTexcoord;

layout(location = 1) out vec2 fragTexCoord;

void main() {
    fragTexCoord = inTexcoord;
    gl_Position = ubo.proj * ubo.view * vec4(inPosition, 1.0);
}
