import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: FormApp()));
class FormApp extends StatefulWidget {
  const FormApp({super.key});
  State<FormApp> createState() => _FormAppState();
}
class _FormAppState extends State<FormApp> {
  final name = TextEditingController();
  String result = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Form')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: 'Name')),
            Row(
              children: [
                ElevatedButton(onPressed: () => setState(() => result = 'Submitted: ${name.text}'),
                    child: const Text('Submit')),
                const SizedBox(width: 10),
                ElevatedButton(onPressed: () {
                  name.clear();
                  setState(() => result = '');
                }, child: const Text('Reset')),
              ],
            ),
            Text(result),
          ],
        ),
      ),
    );
  }
}