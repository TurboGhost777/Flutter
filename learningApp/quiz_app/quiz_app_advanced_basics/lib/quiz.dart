import 'package:flutter/material.dart';
import 'package:quiz_app_advanced_basics/start_screen.dart';
import 'package:quiz_app_advanced_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartSceen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 88, 4, 232),
                  Color.fromARGB(255, 139, 83, 236)
                ],
              ),
            ),
            child: activeScreen),
      ),
    );
  }
}
