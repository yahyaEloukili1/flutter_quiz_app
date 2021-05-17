import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  Quiz(
      {@required this.questionIndex,
      @required this.questions,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questionIndex: questionIndex,
        questions: questions,
      ),
      ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
          answer: answer['text'],
          answerQuestion: () => answerQuestion(answer['score']),
        );
      }).toList()
    ]);
  }
}
