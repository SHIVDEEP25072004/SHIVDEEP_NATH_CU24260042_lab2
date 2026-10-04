import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: App()));

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final user = TextEditingController();
    final pass = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: user,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: pass,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () {
                user.clear();
                pass.clear();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}