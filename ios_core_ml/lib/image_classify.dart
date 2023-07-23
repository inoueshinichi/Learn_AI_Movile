import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ImageClassifyPage extends StatefulWidget {
  const ImageClassifyPage({Key? key}) : super(key: key);

  @override
  _ImageClassifyPageState createState() => _ImageClassifyPageState();
}

class _ImageClassifyPageState extends State<ImageClassifyPage> {
  static const platform = const MethodChannel('image_for_core_ml');

  Future<void> _getImagePicker() async {
    String cameraLevel;
    //Swiftにメッセージ 'getCamera'を送る
    try {
      await platform.invokeMethod('getImage');
    } on PlatformException catch (e) {
      cameraLevel = "Failed to get image";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('画像分類'),
        actions: [
          // ImagePickerControllerの起動
          IconButton(
            onPressed: () => _getImagePicker(),
            icon: const Icon(semanticLabel: '起動', Icons.play_arrow),
          ),
          // 画像分類
          IconButton(
            onPressed: () => {},
            icon: const Icon(semanticLabel: '推論', Icons.play_circle),
          ),
        ],
      ),
      body: Container(),
    );
  }
}
