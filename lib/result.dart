import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result({@required this.score, @required this.reset});
  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Container(
          color: Colors.blue,
            margin: EdgeInsets.all(10),
            child: TextButton(onPressed: reset, child: Text('Play again',style: TextStyle(color: Colors.white),)))
      ],
    );
  }
}
