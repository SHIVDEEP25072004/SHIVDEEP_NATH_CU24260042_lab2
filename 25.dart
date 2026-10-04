import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  final name = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();

  String result = '';

  void showResult() {
    int total = int.parse(m1.text) +
        int.parse(m2.text) +
        int.parse(m3.text);

    double percentage = total / 3;

    setState(() {
      result =
      '${name.text}\nTotal = $total\nPercentage = $percentage%\n'
          '${percentage >= 40 ? "Pass" : "Fail"}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student Result')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: m1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Subject 1'),
            ),
            TextField(
              controller: m2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Subject 2'),
            ),
            TextField(
              controller: m3,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Subject 3'),
            ),
            ElevatedButton(
              onPressed: showResult,
              child: const Text('Show Result'),
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}