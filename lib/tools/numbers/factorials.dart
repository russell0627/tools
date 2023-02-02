import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

int? _number = 0;
int _calculatedNumber = 0;

int getCalculatedNumber() => _calculatedNumber;

int _factorial(int n) {
  return n == 1 ? 1 : n * _factorial(n - 1);
}

int calculateFactorial(int n) => _factorial(n);

class FactorialCalculator extends StatefulWidget {
  const FactorialCalculator({Key? key}) : super(key: key);

  @override
  State<FactorialCalculator> createState() => _FactorialCalculatorState();
}

class _FactorialCalculatorState extends State<FactorialCalculator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 75,
          child: TextFormField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
            maxLength: 2,
            decoration: const InputDecoration(
              labelText: "Number",
            ),
            onChanged: (value) {
              setState(() {
                _number = int.tryParse(value);

                if (_number != null) {
                  _calculatedNumber = calculateFactorial(_number!);
                }
              });
            },
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectableText(getCalculatedNumber().toString()),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
            "A factorial is the product of all positive integers less than or equal to an integer. \n\nIt can be used to figure out how many combinations there are with a set of letters"),
        const SizedBox(
          height: 8,
        ),
        const Text("The answer is selectable."),
      ],
    );
  }
}
