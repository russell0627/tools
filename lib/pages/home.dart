import 'package:flutter/material.dart';
import 'package:tools/numbers/factorials.dart';
import 'package:tools/numbers/pi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double piLength = 3;
  late String stateOfPi;

  @override
  void initState() {
    super.initState();

    _updateStateOfPi(piLength.toInt());
  }

  void _updateStateOfPi(int length) {
    stateOfPi = getShortenedPi(length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Slider(
              value: piLength,
              min: 2,
              max: 1000,
              divisions: 1000,
              label: piLength.toInt().toString(),
              onChanged: (value) {
                setState(
                  () {
                    piLength = value;
                    _updateStateOfPi(piLength.toInt());
                  },
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(stateOfPi),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const FactorialDialog();
                      });
                },
                child: const Text("Factorial Calculator"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
