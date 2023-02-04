import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tools/tools/numbers/conversions/temperature_conversions.dart';

bool fToC = true;
double answer = 0;

class TempConversionPage extends StatefulWidget {
  const TempConversionPage({Key? key}) : super(key: key);

  @override
  State<TempConversionPage> createState() => _TempConversionPageState();
}

class _TempConversionPageState extends State<TempConversionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Temperature Conversion"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: const TempConversionCalculator(),
    );
  }
}
