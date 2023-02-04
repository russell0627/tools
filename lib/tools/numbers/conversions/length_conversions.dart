import 'package:flutter/material.dart';

class LengthConversionCalculator extends StatefulWidget {
  const LengthConversionCalculator({Key? key}) : super(key: key);

  @override
  State<LengthConversionCalculator> createState() => _LengthConversionCalculatorState();
}

class _LengthConversionCalculatorState extends State<LengthConversionCalculator> {
  double feet = 0;
  double meters = 0;
  static const double divisor = 3.281;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          onChanged: (value) {
            setState(() {
              meters = feet * divisor;
            });
          },
        ),
        Text("$feet = $meters")
      ],
    );
  }
}
