import 'package:flutter/material.dart';

void main() {
  runApp(const PhotoFlash());
}

class PhotoFlash extends StatefulWidget {
  const PhotoFlash({super.key});

  @override
  State<PhotoFlash> createState() => _PhotoFlashState();
}

class _PhotoFlashState extends State<PhotoFlash> {
  @override
  Widget build(BuildContext context) {
    String imageToRender = 'images/landscape1.jpg';

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Center(
            child: Text("Flash Photos"),
          ),
          backgroundColor: Colors.grey,
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return TextButton(
              onPressed: () => {},
              child: Center(
                child: Image.asset(imageToRender),
              ),
            );
          },
        ),
      ),
    );
  }
}
