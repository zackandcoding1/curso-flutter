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
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Sobremesas',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Torta de Maçã',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Mousse de Chocolate',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Pudim de Leite Condensado',
              style: TextStyle(fontSize: 18),
            ),
            Center(
              child: Text(
                'Pratos principais',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Frango Assado com Batatas',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Espaguete à Bolonhesa',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Risoto com Cogumelos',
              style: TextStyle(fontSize: 18),
            ),
            Center(
              child: Text(
                'Aperitivos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Bolinhos de Queijo',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Bruschetta de Tomate e Manjericão',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Canapés de Salmão com Cream Cheese',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
