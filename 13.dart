import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => S();
}

class S extends State<App> {
  final h = TextEditingController();
  final w = TextEditingController();
  String r = '';

  void bmi() {
    double x = double.parse(w.text) /
        (double.parse(h.text) * double.parse(h.text));
    setState(() => r = 'BMI = ${x.toStringAsFixed(2)}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: h),
            TextField(controller: w),
            ElevatedButton(onPressed: bmi, child: const Text('BMI')),
            Text(r),
          ],
        ),
      ),
    );
  }
}