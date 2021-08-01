# opencv_flutter_ffi

Uses dart:ffi to run OpenCV C++ 4.5.3 on Flutter App. 

Provided release with a sample gaussian blur function. Can use this repo as a template for projects needing image processing on flutter.

Please install OpenCV iOS Framework and put it at location ios/opencv2.framework

## References
* [OpenCV iOS Framework](https://sourceforge.net/projects/opencvlibrary/files/4.5.3/opencv-4.5.3-ios-framework.zip/download)
* [OpenCV Android Framework](https://sourceforge.net/projects/opencvlibrary/files/4.5.3/opencv-4.5.3-android-sdk.zip/download)
* [About FFI](https://www.youtube.com/watch?v=2MMK7YoFgaA)
* [Android config](https://www.flutterclutter.dev/flutter/tutorials/implementing-edge-detection-in-flutter/2020/1509/)
* [iOS config](https://www.raywenderlich.com/21512310-calling-native-libraries-in-flutter-with-dart-ffi#toc-anchor-015)
* [Flutter CameraController](https://flutter.dev/docs/cookbook/plugins/picture-using-camera)
* [Flutter startImageStream](https://pub.dev/documentation/camera/latest/camera/CameraController/startImageStream.html)
* [Image Format Group](https://github.com/flutter/flutter/issues/26348#issuecomment-796566914)
## Known Issues

* [image_picker crashes when picking images on simulator running on Apple Silicon M1 #71943](https://github.com/flutter/flutter/issues/71943)
* [Some plugins breaks on release mode on Android #78625](https://github.com/flutter/flutter/issues/78625)