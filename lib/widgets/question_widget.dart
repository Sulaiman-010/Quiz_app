import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key,
      required this.question,
      required this.indexAction,
      required this.totalQuestions});
  final String question;
  final int indexAction;
  final int totalQuestions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Text("Question ${indexAction + 1}/$totalQuestions: $question",
        style: TextStyle(
          fontSize: 15,
          color: neutral,
          
        ),),
      ),
    );
  }
}
