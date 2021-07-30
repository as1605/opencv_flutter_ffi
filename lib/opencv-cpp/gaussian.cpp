#include <opencv2/opencv.hpp>

using namespace cv;
extern "C" __attribute__((visibility("default"))) __attribute__((used))
void Gaussian(char *path) {
    Mat img = imread(path);
    Mat temp;
    GaussianBlur(img, temp, Size(75, 75), 0, 0);
    imwrite(path, temp);
}