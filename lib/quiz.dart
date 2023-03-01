import 'package:flutter/material.dart';
import './question.dart';
import './answar.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function UpdateIndex;
  final int questionIndex;

  Quiz(
      {required this.questions,
      required this.UpdateIndex,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Question(
          questions[questionIndex]["question"] as String,
        ),
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => UpdateIndex(answer['score']), answer["text"] as String);
        }).toList(),
      ],
    ));
  }
}
