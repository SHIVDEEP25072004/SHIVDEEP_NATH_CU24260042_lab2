import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  String dept = 'BCA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          value: dept,
          items: ['BCA', 'BBA', 'B.Tech']
              .map((x) => DropdownMenuItem(value: x, child: Text(x)))
              .toList(),
          onChanged: (x) => setState(() => dept = x!),
        ),
      ),
    );
  }
}