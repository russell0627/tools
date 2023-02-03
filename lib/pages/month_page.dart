import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../tools/months/data/months.dart';
import '../tools/months/models/month.dart';

class MonthPage extends StatefulWidget {
  const MonthPage({Key? key}) : super(key: key);

  @override
  State<MonthPage> createState() => _MonthPageState();
}

class _MonthPageState extends State<MonthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Months"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 50),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      foundMonth = findMonth(int.parse(value));
                    });
                  },
                  maxLength: 2,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],


                ),
              ),
            ),
            Text(
              foundMonth.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
