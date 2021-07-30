import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OpenCV on Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'OpenCV C++ on dart:ffi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ImagePicker _picker = ImagePicker();
  final dylib = DynamicLibrary.open("libgaussian.so");
  String _img = "none";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final imageFile =
                    await _picker.pickImage(source: ImageSource.gallery);
                final imagePath =
                    imageFile?.path.toNativeUtf8() ?? "none".toNativeUtf8();
                final gaussian = dylib.lookupFunction<
                    Void Function(Pointer<Utf8>),
                    void Function(Pointer<Utf8>)>('Gaussian');
                gaussian(imagePath);
                setState(() {
                  _img = imagePath.toDartString();
                });
              },
              child: Text("Pick Image from Gallery"),
            ),
            Image.file(File(_img))
          ],
        ),
      ),
    );
  }
}
