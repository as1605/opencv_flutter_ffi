extern "C" __attribute__((visibility("default"))) __attribute__((used))
void Gaussian(char *);

extern "C" __attribute__((visibility("default"))) __attribute__((used))
void image_ffi (unsigned char *, unsigned int *);

#include "gaussian.cpp"
#include "image_ffi.cpp"