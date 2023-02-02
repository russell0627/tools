import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tools/pages/factorial_page.dart';
import 'package:tools/pages/month_page.dart';
import 'package:tools/pages/pi_page.dart';
import 'package:tools/widgets/settings_dialog.dart';
import 'package:tools/pets/pages/pet_home.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              showDialog(context: context, builder: (context) => const SettingsDialog());
            },
          ),
        ],
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const FactorialPage()));
              },
              child: const Text("Factorial Calculator"),
            ),
            const SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PiPage()));
              },
              child: const Text("Pi Digits"),
            ),
            const SizedBox(
              height: 8,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MonthPage()));
              },
              child: const Text("Months"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PetHomePage()));
                },
                child: const Text("Pet Info")),
          ],
        ),
      ),
    );
  }
}