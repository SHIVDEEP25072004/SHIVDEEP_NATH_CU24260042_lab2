import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: TotalApp()));

class TotalApp extends StatefulWidget {
  const TotalApp({super.key});

  @override
  State<TotalApp> createState() => _TotalAppState();
}

class _TotalAppState extends State<TotalApp> {
  final name = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final m3 = TextEditingController();

  String result = '';

  void total() {
    int t = int.parse(m1.text) + int.parse(m2.text) + int.parse(m3.text);

    setState(() {
      result = '${name.text}: Total = $t';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Total Marks'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),

            TextField(
              controller: m1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Python',
              ),
            ),

            TextField(
              controller: m2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Java',
              ),
            ),

            TextField(
              controller: m3,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'C++',
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: total,
              child: const Text('Calculate Total'),
            ),

            const SizedBox(height: 10),

            Text(
              result,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}