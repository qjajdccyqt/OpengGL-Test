#version 330 core
layout(location = 0) in vec3 aPos;   // 位置变量的属性位置值为 0
layout(location = 1) in vec3 aColor; // 颜色变量的属性位置值为 1
out vec3 ourColor; // 为片段着色器指定一个颜色输出
void main()
{
    //gl_Position是顶点着色器的输出向量，会在后续进阶GLSL中再详细介绍
    gl_Position = vec4(aPos, 1.0);
    ourColor = aColor; // 将ourColor设置为我们从顶点数据那里得到的输入颜色
}
