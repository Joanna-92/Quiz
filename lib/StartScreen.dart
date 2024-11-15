import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function()startQuiz;   //start Quiz can be usen in a built method

  @override
  Widget build(contex) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, color: const Color.fromARGB(150, 255, 255, 255),),
          const SizedBox(height: 100),
          const Text(
            'Lern Flutter with a funny way',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: () {

              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,

            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              'Start Quiz',
            ),
          )
        ],
      ),
    );
  }
}
