import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final Map<String, List<String>> dados = {
    'Sobremesas': [
      'Torta de Maçã',
      'Mousse de Chocolate',
      'Pudim de Leite Condensado',
    ],
    'Pratos principais': [
      'Frango Assado com Batatas',
      'Espaguete à Bolonhesa',
      'Risoto de Cogumelos',
    ],
    'Aperitivos': [
      'Bolinhos de Queijo',
      'Bruschetta de Tomate e Manjericão',
      'Canapés de Salmão com Cream Cheese',
    ],
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Minhas receitas",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (MapEntry<String, List<String>> entry in dados.entries)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    entry.key,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (String valor in entry.value)
                      Text(
                        valor,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                  ],
                )
              ],
            ),
        ],
      ),
    ));
  }
}
