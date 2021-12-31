import 'package:flutter/material.dart';

void main() {
  runApp(const SimpleQuizApp());
}

class SimpleQuizApp extends StatelessWidget {
  const SimpleQuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Quiz'),
        ),
        body: const Center(
          child: Text('Simple Quiz'),
        ),
      ),
    );
  }
}
