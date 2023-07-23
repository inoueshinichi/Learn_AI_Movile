import 'package:flutter/material.dart';
import './image_classify.dart';
import './capture_classify.dart';

void main() {
  runApp(const CoreMLApp());
}

class CoreMLApp extends StatelessWidget {
  const CoreMLApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoreML',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // スタート画面表示
      home: const StartPage(),
    );
  }
}

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Menu List'),
      ),
      body: GridMenuView(),
    );
  }
}

/* ナビゲーション */
void showImageClassifyPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ImageClassifyPage()),
  );
}

// void showCaptureClassifyPage(BuildContext context) {
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => const CaptureClassifyPage()),
//   )
// }

class GridMenuView extends StatelessWidget {
  GridMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      crossAxisSpacing: 24,
      mainAxisSpacing: 24,
      padding: const EdgeInsets.symmetric(vertical: 24),
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text(
            '分類',
            style: TextStyle(fontSize: 24),
          ),
        ),
        ElevatedButton(
          onPressed: () => showImageClassifyPage(context),
          child: const Text('画像'),
        ),
        ElevatedButton(
          onPressed: () => {},
          child: const Text('映像'),
        ),
        Container(),
        Container(
          alignment: Alignment.center,
          child: const Text(
            '検出',
            style: TextStyle(fontSize: 24),
          ),
        ),
        ElevatedButton(
          onPressed: () => {},
          child: const Text('画像'),
        ),
        ElevatedButton(
          onPressed: () => {},
          child: const Text('映像'),
        ),
        Container(),
      ],
    );
  }
}
