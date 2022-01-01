import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

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

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 2},
        {'text': 'Lion', 'score': 4},
      ],
    },
    {
      'questionText': 'Who\'s your favorite food?',
      'answers': [
        {'text': 'Pizza', 'score': 3},
        {'text': 'Steak', 'score': 5},
        {'text': 'Rice', 'score': 4},
        {'text': 'Noodle', 'score': 2},
      ],
    },
    {
      'questionText': 'Who\'s your favorite car brand?',
      'answers': [
        {'text': 'Honda', 'score': 3},
        {'text': 'BMW', 'score': 4},
        {'text': 'Toyota', 'score': 5},
        {'text': 'Hyundai', 'score': 2},
      ],
    },
  ];

  var _totalScore = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Quiz'),
        ),
        body: _buildBody(),
      ),
    );
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
    });
  }

  Widget _buildBody() {
    return _questionIndex < _questions.length
        ? Quiz(
            answerQuestion: _answerQuestion,
            questionIndex: _questionIndex,
            questions: _questions,
          )
        : Result(_totalScore);
  }
}
