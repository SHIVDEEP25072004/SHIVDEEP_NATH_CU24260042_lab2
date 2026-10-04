import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: SnackApp()));
class SnackApp extends StatelessWidget {
  const SnackApp({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SnackBar')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Welcome to Flutter!')),
          ),
          child: const Text('Show Message'),
        ),
      ),
    );
  }
}