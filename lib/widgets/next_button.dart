import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';


class NextButton extends StatelessWidget {
  const NextButton({super.key, required this.nextQuestion});

  final VoidCallback nextQuestion;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        decoration: BoxDecoration(
          color: neutral,
          borderRadius: BorderRadius.circular(10)
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          "Next Question",
          textAlign: TextAlign.center,
        ),
      ),
    );
  
  }
}