import 'package:flutter/cupertino.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function _answerQuestion;
  final List<Map> questions;
  final int _questionIndex;

  Quiz(this._answerQuestion, this.questions, this._questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[_questionIndex]['questionText'],
        ),
        ...(questions[_questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(_answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
