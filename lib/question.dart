
import 'package:flutter/material.dart';
class Question  extends StatelessWidget {
  final int questionIndex;
  final List<Map<String,Object>> questions;
     Question({this.questionIndex, this.questions});
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questions[questionIndex]['questionText'],
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ));
  }
}
