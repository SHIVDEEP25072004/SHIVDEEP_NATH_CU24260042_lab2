import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: CheckboxApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class CheckboxApp extends StatefulWidget {
  const CheckboxApp({super.key});

  @override
  State<CheckboxApp> createState() => _CheckboxAppState();
}

class _CheckboxAppState extends State<CheckboxApp> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
      ),
      body: Center(
        child: CheckboxListTile(
          title: const Text('I agree to the terms and conditions'),
          value: agree,
          onChanged: (value) {
            setState(() {
              agree = value!;
            });
          },
        ),
      ),
    );
  }
}