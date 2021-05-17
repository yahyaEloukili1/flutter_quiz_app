import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer.dart';
import 'package:flutter_quiz_app/quiz.dart';
import 'package:flutter_quiz_app/result.dart';
import './question.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  int _totalScore = 0;
  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    if (_questionIndex < _questions.length) {
      setState(() {
        _totalScore += score;
        _questionIndex = _questionIndex + 1;
        print(_totalScore);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Center(child: Text('Quiz app'))),
          body: (_questionIndex < _questions.length)
              ? Quiz(
                  questionIndex: _questionIndex,
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                )
              : Result(
                  score: _totalScore,
                  reset: _reset,
                )),
    );
  }
}
