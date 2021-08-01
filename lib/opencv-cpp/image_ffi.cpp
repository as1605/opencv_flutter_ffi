#include <iostream>
#include <vector>
#include <opencv2/opencv.hpp>

void image_ffi (uchar *buf, uint *size) { 
    std::vector <uchar> v(buf, buf + size[0]);
    cv::Mat img = cv::imdecode(cv::Mat(v), cv::IMREAD_COLOR);


    cv::GaussianBlur(img, img, cv::Size(15, 15), 0, 0);
    cv::putText(img, "Hello World!", cv::Size(30, 30), 1, 1.5, 2, 2);


    std::vector <uchar> retv;
    cv::imencode(".jpg", img, retv);
    memcpy(buf, retv.data(), retv.size());
    size[0] = retv.size();
}