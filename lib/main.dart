import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

void main() {
  runApp(const SimpleQuizApp());
}

class SimpleQuizApp extends StatefulWidget {
  const SimpleQuizApp({Key key}) : super(key: key);

  @override
  State<SimpleQuizApp> createState() => _SimpleQuizAppState();
}

class _SimpleQuizAppState extends State<SimpleQuizApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['Pizza', 'Steak', 'Rice', 'Noodles']
    },
  ];

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

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      }
    });
  }

  Widget _buildBody() {
    return _questionIndex < _questions.length
        ? Column(
            children: [
              Question(_questions[_questionIndex]['questionText'] as String),
              ...(_questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) => Answer(_answerQuestion, answer))
                  .toList(),
            ],
          )
        : const Center(child: Text('You\'ve reached the end of the quiz.'));
  }
}
