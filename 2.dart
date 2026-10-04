import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: SumApp()));
class SumApp extends StatefulWidget {
  const SumApp({super.key});
  State<SumApp> createState() => _SumAppState();
}
class _SumAppState extends State<SumApp> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sum')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, keyboardType: TextInputType.number),
            TextField(controller: b, keyboardType: TextInputType.number),
            ElevatedButton(
              onPressed: () => setState(() =>
              result = 'Sum = ${double.parse(a.text) + double.parse(b.text)}'),
              child: const Text('Add'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}