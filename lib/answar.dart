import './gradient_button.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() questionUpdate;
  final String answerText;
  //final void Function()? questionUpdate;
  //final VoidCallback questionUpdate;

  Answer(this.questionUpdate, this.answerText);

  @override
  Widget build(BuildContext context) {
    return (Container(
      margin: EdgeInsets.only(top: 5, bottom: 5),
      width: MediaQuery.of(context).size.width - 50,
      child: GradientButtonFb1(
        top: 10,
        bottom: 10,
        text: answerText,
        onPressed: questionUpdate,
      ),
    ));
  }
}
