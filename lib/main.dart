import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './quiz.dart';
import './result.dart';
import './question_bank.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questions = QuestionBank.questions;
  var _questionIndex = 0;
  var _totalScore = 0;
  var _counter = 0;

  void _ResetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _counter = 0;
    });
  }

  void _UpdateIndex(int score) {
    _totalScore += score;
    _counter++;
    setState(() {
      _questionIndex++;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.indigo),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
        ),
        body: (_questionIndex < _questions.length) && (_counter < 5)
            ? Quiz(
                questionIndex: _questionIndex,
                questions: _questions..shuffle(),
                UpdateIndex: _UpdateIndex,
              )
            : Result(_totalScore, _ResetQuiz),
      ),
    );
  }
}
