cmake_minimum_required(VERSION 3.6.0)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/../include)
add_library(lib_opencv SHARED IMPORTED)
set_target_properties(lib_opencv PROPERTIES IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/../src/main/jniLibs/${ANDROID_ABI}/libopencv_java4.so)
set(SOURCES
    ../../lib/opencv-cpp/main.cpp
)
add_library(OpenCV_ffi SHARED ${SOURCES})
target_link_libraries(OpenCV_ffi lib_opencv)
