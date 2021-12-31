import 'package:flutter/material.dart';
import 'package:simple_quiz_app/answer.dart';

import 'question.dart';

void main() {
  runApp(const SimpleQuizApp());
}

class SimpleQuizApp extends StatefulWidget {
  const SimpleQuizApp({Key? key}) : super(key: key);

  @override
  State<SimpleQuizApp> createState() => _SimpleQuizAppState();
}

class _SimpleQuizAppState extends State<SimpleQuizApp> {
  var _questionIndex = 0;

  final _questions = [
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
            Question(_questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }

  void _answerQuestion() {
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
  }
}
