import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../tools/letter_grading_calculator.dart';

class LetterGradingPage extends StatefulWidget {
  const LetterGradingPage({Key? key}) : super(key: key);

  @override
  State<LetterGradingPage> createState() => _LetterGradingPageState();
}

class _LetterGradingPageState extends State<LetterGradingPage> {
  late LetterGrade grade = gradeByScore(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Letter Grading"),
      ),
      body: Center(
        child: Column(
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 75),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    grade = gradeByScore(int.tryParse(value) ?? 0);
                  });
                },
                textAlign: TextAlign.center,
                maxLength: 3,
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: const InputDecoration(label: Text("Score")),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SelectableText(grade.toString())
          ],
        ),
      ),
    );
  }
}
