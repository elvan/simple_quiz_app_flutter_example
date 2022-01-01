import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final Function(int score) answerQuestion;

  final int questionIndex;

  final List<Map<String, Object>> questions;

  const Quiz({
    Key? key,
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  answerQuestion: () => answerQuestion(answer['score'] as int),
                  answerText: answer['text'] as String,
                ))
            .toList(),
      ],
    );
  }
}
