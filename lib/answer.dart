import 'package:flutter/material.dart';
 class Answer extends StatelessWidget {
  final String answer;
  final Function answerQuestion;
   Answer({@required this.answer,@required this.answerQuestion});

   @override
   Widget build(BuildContext context) {
     return  Container(
       width: double.infinity,
       color: Colors.blue,
       margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
       child: TextButton(
         child: Text(
           answer,
           style: TextStyle(color: Colors.white),
         ),
         onPressed: answerQuestion,
       ),
     );
   }
 }
