import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: CalculatorApp()));
class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});
  State<CalculatorApp> createState() => _CalculatorAppState();
}
class _CalculatorAppState extends State<CalculatorApp> {
  final a = TextEditingController(), b = TextEditingController();
  String result = '';
  void calc(String op) {
    double x = double.parse(a.text), y = double.parse(b.text);
    double r;
    if (op == '+') r = x + y;
    else if (op == '-') r = x - y;
    else if (op == '*') r = x * y;
    else r = x / y;
    setState(() => result = 'Result = $r');
  }
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Simple Calculator')),
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        TextField(controller: a, keyboardType: TextInputType.number),
        TextField(controller: b, keyboardType: TextInputType.number),
        Wrap(spacing: 8, children: ['+', '-', '*', '/']
            .map((x) => ElevatedButton(onPressed: () => calc(x), child: Text(x))).toList()),
        Text(result),
      ]),
    ),
  );
}