import 'package:flutter/material.dart';
import 'package:quiz_app_advanced_basics/data/questions.dart';
import 'package:quiz_app_advanced_basics/start_screen.dart';
import 'package:quiz_app_advanced_basics/questions_screen.dart';
import 'package:quiz_app_advanced_basics/results_screenn.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnwsers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnwsers.add(answer);

    if (selectedAnwsers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnwsers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartSceen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = Questions(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnwsers,
        onRestart: restartQuiz,
      );
    }

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
          child: screenWidget,
        ),
      ),
    );
  }
}
