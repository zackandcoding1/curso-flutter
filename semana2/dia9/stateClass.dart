// Utilizando Stateful e Stateless

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Tela(),
  ));
}

class Tela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Cabecalho(),
          Corpo(valor: 42),
          Contador(countInicial: 3),
        ],
      ),
    );
  }
}

class Cabecalho extends StatefulWidget {
  const Cabecalho({super.key});

  @override
  State<Cabecalho> createState() => _EstadoCabecalho();
}

class _EstadoCabecalho extends State<Cabecalho> {
  @override
  Widget build(BuildContext context) {
    return const Text('Cabeçalho');
  }
}

class Corpo extends StatefulWidget {
  final int valor;

  const Corpo({
    super.key,
    required this.valor,
  });

  @override
  State<Corpo> createState() => _EstadoCorpo();
}

class _EstadoCorpo extends State<Corpo> {
  @override
  Widget build(BuildContext context) {
    return Text('Corpo: ${widget.valor}');
  }
}

class Contador extends StatefulWidget {
  final int countInicial;

  const Contador({super.key, required this.countInicial});

  @override
  State<Contador> createState() => _EstadoContador();
}

class _EstadoContador extends State<Contador> {
  late int count;

  @override
  void initState() {
    super.initState();
    count = widget.countInicial;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$count cliques'),
        TextButton(
          child: const Text('adicionar'),
          onPressed: () {
            setState(() {
              count += 1;
            });
          },
        ),
        TextButton(
          child: const Text('diminuir'),
          onPressed: () {
            setState(() {
              count -= 1;
            });
          },
        ),
      ],
    );
  }
}
