import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Minhas receitas",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: const Center(
          child: Text('Sem receitas ainda.'),
        ),
      ),
    );
  }
}
