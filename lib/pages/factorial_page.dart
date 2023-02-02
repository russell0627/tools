import 'package:flutter/material.dart';
import 'package:tools/tools/numbers/factorials.dart';

class FactorialPage extends StatelessWidget {
  const FactorialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Factorial Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: const FactorialCalculator(),
          ),
        ),
      ),
    );
  }
}
