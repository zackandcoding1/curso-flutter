import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Tela(),
  ));
}

class Tela extends StatelessWidget {
  const Tela({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Button(),
        ],
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  int? valor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text('Opção 1'),
          value: 1,
          groupValue: valor,
          onChanged: (novoValor) {
            setState(() {
              valor = novoValor;
            });
          },
        ),
        RadioListTile(
          title: const Text('Opção 2'),
          value: 2,
          groupValue: valor,
          onChanged: (novoValor) {
            setState(() {
              valor = novoValor;
            });
          },
        ),
        RadioListTile(
          title: const Text('Opção 3'),
          value: 3,
          groupValue: valor,
          onChanged: (novoValor) {
            setState(() {
              valor = novoValor;
            });
          },
        ),
      ],
    );
  }
}
