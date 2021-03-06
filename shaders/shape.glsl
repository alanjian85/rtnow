#ifndef SHAPE_GLSL
#define SHAPE_GLSL

#include "/include/ray.glsl"

struct SurfaceInteraction {
    float t;
    vec3 p;
    vec3 n;
};

void interactionSetNormal(inout SurfaceInteraction self, Ray ray, vec3 n) {
    if (dot(n, ray.d) > 0.0) {
        self.n = -n;
    } else {
        self.n = n;
    }
}

#endif // SHAPE_GLSL