import 'package:flutter/material.dart';

void main() {
  runApp(SimpleQuizApp());
}

class SimpleQuizApp extends StatelessWidget {
  SimpleQuizApp({Key? key}) : super(key: key);

  final questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite food?',
    'What\'s your favorite sport?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Quiz'),
        ),
        body: Column(
          children: [
            const Text('The question!'),
            RaisedButton(
              onPressed: () {},
              child: const Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: () {},
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
