import 'package:flutter/material.dart';

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

  void _answerQuestion() {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    }
  }

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
            Text(questions[_questionIndex]),
            RaisedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
