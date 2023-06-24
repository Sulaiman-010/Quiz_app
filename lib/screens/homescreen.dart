
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/question_widget.dart';

import '../widgets/next_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
 

  
}

class _HomeScreenState extends State<HomeScreen> {
   final List<Question> _questions = [
    Question(id: "1", title: "The sum of 2 + 13 = ", options: {
      '5':false,'10':false,'15':true,'20':false,}),
      Question(id: "2", title: "The sum of 12 + 8 = ", options: {
      '5':false,'10':false,'15':false,'20':true,}),
  ];
  int index = 0;
  
  void nextQuestion(){
  //  if(index == _questions.length - 1)
  //  {
  //   return;
  //  }
  //  else {
  setState(() {
      index++;
    });
    
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        shadowColor: Colors.transparent,
        title: Text("Quiz App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              QuestionWidget(question: _questions[index].title, indexAction: index, totalQuestions: _questions.length)
           , const Divider(color : Colors.white)
           
            ],
          ),
        ),
      ),
      floatingActionButton: NextButton(nextQuestion: nextQuestion,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
    
  }
}