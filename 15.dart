import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  String gender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RadioListTile(
            value: 'Male',
            groupValue: gender,
            onChanged: (x) => setState(() => gender = x!),
            title: const Text('Male'),
          ),
          RadioListTile(
            value: 'Female',
            groupValue: gender,
            onChanged: (x) => setState(() => gender = x!),
            title: const Text('Female'),
          ),
        ],
      ),
    );
  }
}