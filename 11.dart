import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  final c = TextEditingController();
  String r = '';

  void convert() {
    double x = double.parse(c.text);
    setState(() => r = 'Fahrenheit = ${x * 9 / 5 + 32}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Celsius to Fahrenheit')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: c),
            ElevatedButton(
              onPressed: convert,
              child: const Text('Convert'),
            ),
            Text(r),
          ],
        ),
      ),
    );
  }
}