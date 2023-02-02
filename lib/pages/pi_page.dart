import 'package:flutter/material.dart';
import 'package:tools/tools/numbers/pi.dart';

class PiPage extends StatelessWidget {
  const PiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pi"),),
      body: Center(child: ConstrainedBox(constraints: const BoxConstraints(maxWidth: 300), child: const Center(child: PiDigitFinder()))),
    );
  }
}
