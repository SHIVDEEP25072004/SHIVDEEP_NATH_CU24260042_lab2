import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: ChangeTextApp()));
class ChangeTextApp extends StatefulWidget {
  const ChangeTextApp({super.key});
  State<ChangeTextApp> createState() => _ChangeTextAppState();
}
class _ChangeTextAppState extends State<ChangeTextApp> {
  String text = 'Hello Flutter';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Text')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text, style: const TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () => setState(() => text = 'Button Pressed!'),
              child: const Text('Press'),
            ),
          ],
        ),
      ),
    );
  }
}