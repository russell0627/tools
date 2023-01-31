import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

int _number = 0;
int _calculatedNumber = 0;

int getCalculatedNumber() => _calculatedNumber;

int _factorial(int n) {
  return n == 1 ? 1 : n * _factorial(n - 1);
}

int calculateFactorial(int n) => _factorial(n);

_factorialDialog() {}

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
        TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: const InputDecoration(
            labelText: "Number",
          ),
          onChanged: (value) {
            setState(() {
              _number = int.parse(value);
              _calculatedNumber = calculateFactorial(_number);
            });
          },
        ),
        Text("Answer: ${getCalculatedNumber()}"),
        SimpleDialogOption(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text("Close"),
        ),
        const Text("A factorial is the product of all positive integers less than or equal to an integer. \n It can be used to figure out how many combinations there are with a set of letters")
      ],
    );
  }
}

class FactorialDialog extends StatelessWidget {
  const FactorialDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const FactorialCalculator(),
            ],
          ),
        ),
      ],
    );
  }
}
