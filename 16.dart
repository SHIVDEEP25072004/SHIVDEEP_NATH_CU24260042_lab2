import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  String course = 'BCA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          for (var x in ['BCA', 'BBA', 'B.Tech'])
            RadioListTile(
              value: x,
              groupValue: course,
              onChanged: (v) => setState(() => course = v!),
              title: Text(x),
            ),
        ],
      ),
    );
  }
}