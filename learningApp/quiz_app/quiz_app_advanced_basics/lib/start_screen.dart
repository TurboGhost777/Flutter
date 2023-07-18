import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartSceen extends StatelessWidget {
  const StartSceen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'images/quiz_logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          Text('Learn Flutter the fun way!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 229, 195, 244),
                fontSize: 24,
              )),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 252, 247, 252)),
            icon: const Icon(Icons.start_outlined),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
