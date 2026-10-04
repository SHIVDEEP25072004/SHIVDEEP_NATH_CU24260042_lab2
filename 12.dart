import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  final l = TextEditingController();
  final w = TextEditingController();
  String r = '';

  void area() {
    setState(() {
      r = 'Area = ${double.parse(l.text) * double.parse(w.text)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: l),
            TextField(controller: w),
            ElevatedButton(onPressed: area, child: const Text('Area')),
            Text(r),
          ],
        ),
      ),
    );
  }
}