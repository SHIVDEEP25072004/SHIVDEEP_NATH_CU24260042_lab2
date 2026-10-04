import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  String gender = 'Male';
  String course = 'BCA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const TextField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          const TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),
          ),
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
          DropdownButton(
            value: course,
            items: ['BCA', 'BBA', 'B.Tech']
                .map((x) => DropdownMenuItem(value: x, child: Text(x)))
                .toList(),
            onChanged: (x) => setState(() => course = x!),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}