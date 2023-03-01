import 'package:flutter/material.dart';
import 'gradient_button.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function() _ResetQuiz;

  String get resultPhrase {
    String resultText = "";
    if (totalScore == 0 || totalScore == 1) {
      resultText = "You have to gain more knowledge";
    } else if (totalScore == 2) {
      resultText = "You should try again";
    } else if (totalScore == 3) {
      resultText = "Not bad!!!";
    } else if (totalScore == 4) {
      resultText = "So close, better luck next time";
    } else if (totalScore == 5) {
      resultText = "Congratulation You are a NERD!!!";
    }
    return (resultText);
  }

  Result(this.totalScore, this._ResetQuiz);
  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Your Score is ${totalScore.toString()} out of 5",
            style: TextStyle(
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.all(15),
            child: GradientButtonFb1(
              text: "Restart Quiz",
              onPressed: _ResetQuiz,
            ),
          ),
          // FlatButton(
          //   onPressed: _ResetQuiz,
          //   child: Text("Restart Quiz"),
          //   textColor: Colors.blue,
          // )
        ],
      ),
    ));
  }
}
