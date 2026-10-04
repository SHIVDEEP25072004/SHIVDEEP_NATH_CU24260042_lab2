import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  String sem = '1st';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: sem,
          items: ['1st', '2nd', '3rd', '4th', '5th', '6th']
              .map((x) => DropdownMenuItem(value: x, child: Text(x)))
              .toList(),
          onChanged: (x) => setState(() => sem = x!),
        ),
      ),
    );
  }
}