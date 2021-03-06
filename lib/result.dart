import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  final VoidCallback resetQuiz;

  const Result(
    this.resultScore,
    this.resetQuiz, {
    Key? key,
  }) : super(key: key);

  String get resultPhrase {
    String resultText = 'You\'ve reached the end of the quiz.';

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            textColor: Colors.blue,
            onPressed: resetQuiz,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
