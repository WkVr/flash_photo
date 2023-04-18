import 'dart:math';

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
  String imageToRender = 'images/landscape1.jpg';
  int getRandom(max) {
    return Random().nextInt(max) + 1;
  }

  @override
  Widget build(BuildContext context) {
    void getImage(Orientation orientation) {
      print(orientation);
      setState(() {
        imageToRender =
            'images/${orientation == Orientation.landscape ? 'landscape${getRandom(9)}' : 'portrait${getRandom(19)}'}.jpg';
      });
    }

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
              onPressed: () => getImage(orientation),
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
