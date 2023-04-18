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
    return const MaterialApp(
      home: Scaffold(),
    );
  }
}
