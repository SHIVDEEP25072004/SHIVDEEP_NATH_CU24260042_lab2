import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: EvenOddApp()));

class EvenOddApp extends StatefulWidget {
  const EvenOddApp({super.key});

  @override
  State<EvenOddApp> createState() => _EvenOddAppState();
}

class _EvenOddAppState extends State<EvenOddApp> {
  final n = TextEditingController();
  String result = '';

  void check() {
    int x = int.parse(n.text);

    setState(() {
      result = x % 2 == 0 ? 'Even' : 'Odd';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Even or Odd')),
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