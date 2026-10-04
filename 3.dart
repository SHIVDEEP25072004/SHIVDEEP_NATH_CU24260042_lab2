import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: OperationApp()));
class OperationApp extends StatefulWidget {
  const OperationApp({super.key});
  State<OperationApp> createState() => _OperationAppState();
}
class _OperationAppState extends State<OperationApp> {
  final a = TextEditingController();
  final b = TextEditingController();
  String result = '';
  void calculate(String op) {
    double x = double.parse(a.text), y = double.parse(b.text);
    double r = op == '+' ? x + y : op == '-' ? x - y : op == '*' ? x * y : x / y;
    setState(() => result = '$x $op $y = $r');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: a, keyboardType: TextInputType.number),
            TextField(controller: b, keyboardType: TextInputType.number),
            Wrap(
              spacing: 8,
              children: ['+', '-', '*', '/'].map((op) =>
                  ElevatedButton(onPressed: () => calculate(op), child: Text(op))).toList(),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}