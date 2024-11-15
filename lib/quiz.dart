import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_flutter/questions_screen.dart';
import 'StartScreen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var aktivScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      aktivScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurpleAccent, Colors.deepPurpleAccent]),
          ),
          child: aktivScreen == 'start-screen'
              ? StartScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
