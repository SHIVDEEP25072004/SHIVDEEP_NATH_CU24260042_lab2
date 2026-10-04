import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: NumberApp()));

class NumberApp extends StatefulWidget {
  const NumberApp({super.key});

  @override
  State<NumberApp> createState() => _NumberAppState();
}

class _NumberAppState extends State<NumberApp> {
  final n = TextEditingController();
  String result = '';

  void check() {
    double x = double.parse(n.text);

    setState(() {
      result = x > 0
          ? 'Positive'
          : x < 0
          ? 'Negative'
          : 'Zero';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Number Check')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: n,
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: check,
              child: const Text('Check'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}