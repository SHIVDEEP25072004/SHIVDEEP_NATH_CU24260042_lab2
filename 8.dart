import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: PercentageApp()));

class PercentageApp extends StatefulWidget {
  const PercentageApp({super.key});

  @override
  State<PercentageApp> createState() => _PercentageAppState();
}

class _PercentageAppState extends State<PercentageApp> {
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();

  String result = '';

  void calculate() {
    int total = int.parse(m1.text) +
        int.parse(m2.text) +
        int.parse(m3.text);

    double percentage = total / 3;

    setState(() {
      result = 'Percentage = $percentage%';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Percentage')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: m1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'python'),
            ),
            TextField(
              controller: m2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'java'),
            ),
            TextField(
              controller: m3,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'C++'),
            ),

            ElevatedButton(
              onPressed: calculate,
              child: const Text('Calculate'),
            ),

            Text(result),
          ],
        ),
      ),
    );
  }
}