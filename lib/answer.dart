import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;

  const Answer(this.selectHandler, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectHandler,
        child: const Text('Answer 1'),
      ),
    );
  }
}
