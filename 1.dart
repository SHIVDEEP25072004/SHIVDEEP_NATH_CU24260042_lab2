import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: NameApp()));
class NameApp extends StatefulWidget {
  const NameApp({super.key});
  State<NameApp> createState() => _NameAppState();
}
class _NameAppState extends State<NameApp> {
  final name = TextEditingController();
  String result = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Name')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: 'Enter name')),
            ElevatedButton(
              onPressed: () => setState(() => result = 'Hello ${name.text}'),
              child: const Text('Display'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}