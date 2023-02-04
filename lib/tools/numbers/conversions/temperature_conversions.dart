import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../pages/temp_conversion_page.dart';



double _tempConverter({double f = 0, double c = 0, bool fToC = true}) {
  if (fToC) {
    return _f2C(f);
  }
  return _c2F(c);
}

double _c2F(double c) => 1.8 * c + 32;

double _f2C(double f) => (f - 32) / 1.8;

class TempConversionCalculator extends StatefulWidget {
  const TempConversionCalculator({Key? key}) : super(key: key);


  @override
  State<TempConversionCalculator> createState() => _TempConversionCalculatorState();
}

class _TempConversionCalculatorState extends State<TempConversionCalculator> {
  final bool fToC = true;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(fToC? "Fahrenheit to Celsius" : "Celsius to Fahrenheit"),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  answer = _tempConverter(f: double.tryParse(value) ?? 0, fToC: fToC);
                });
              },
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text("Answer: "), SelectableText(answer.toString())],
            )
          ],
        ),
      ),
    );
  }
}