import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  bool check = false, sw = false;
  String gender = 'Male';
  String course = 'BCA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CheckboxListTile(
            title: const Text('Agree'),
            value: check,
            onChanged: (x) => setState(() => check = x!),
          ),
          RadioListTile(
            value: 'Male',
            groupValue: gender,
            onChanged: (x) => setState(() => gender = x!),
            title: const Text('Male'),
          ),
          DropdownButton(
            value: course,
            items: ['BCA', 'BBA', 'B.Tech']
                .map((x) => DropdownMenuItem(value: x, child: Text(x)))
                .toList(),
            onChanged: (x) => setState(() => course = x!),
          ),
          SwitchListTile(
            title: const Text('Setting'),
            value: sw,
            onChanged: (x) => setState(() => sw = x),
          ),
        ],
      ),
    );
  }
}