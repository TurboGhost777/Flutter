import 'package:flutter/material.dart';
import 'package:quiz_app_advanced_basics/data/questions.dart';
import 'package:quiz_app_advanced_basics/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    if (chosenAnswers.length == questions.length) {
      for (var i = 0; i < chosenAnswers.length; i++) {
        summary.add(
          {
            'question_index': i,
            'question': questions[i],
            'correct_answer': questions[i].answers[0],
            'user_answer': chosenAnswers[i],
          },
        );
      }
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('You anser x out of x'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getSummaryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}
