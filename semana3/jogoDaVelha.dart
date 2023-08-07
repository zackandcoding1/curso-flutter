import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: TelaInicial(),
  ));
}

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String nomeJogador1 = 'Jogador 1';
  String nomeJogador2 = 'Jogador 2';
  String? erroCampo1;
  String? erroCampo2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            /*Definindo caixas de texto para inserir o nome do
             *jogador 1 e jogador 2 e o botão de iniciar jogo*/
            children: [
              const Text('Jogo da Velha',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
              const SizedBox(height: 20),
              TextFormField(
                initialValue: nomeJogador1,
                onChanged: (nome) {
                  setState(() {
                    nomeJogador1 = nome;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.face),
                  errorText: erroCampo1,
                  labelText: 'Insira o nome do Jogador 1',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                initialValue: nomeJogador2,
                onChanged: (nome) {
                  setState(() {
                    nomeJogador2 = nome;
                  });
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.face),
                  errorText: erroCampo2,
                  labelText: 'Insira o nome do Jogador 2',
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              MaterialButton(
                // Ao clicar no botão passa os nomes dos jogadores 1 e 2
                // Se algum dos nomes não estiver preenchido, retorna um erro
                onPressed: () async {
                  setState(() {
                    erroCampo1 =
                        nomeJogador1.isEmpty ? 'Preencha este campo.' : null;
                    erroCampo2 =
                        nomeJogador2.isEmpty ? 'Preencha este campo.' : null;
                  });

                  if (erroCampo1 == null && erroCampo2 == null) {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => TelaTabuleiro(
                          nomeJogador1: nomeJogador1,
                          nomeJogador2: nomeJogador2,
                        ),
                      ),
                    );
                  }
                },
                color: Colors.cyan,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'INICIAR JOGO',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TelaTabuleiro extends StatelessWidget {
  final String nomeJogador1;
  final String nomeJogador2;

  const TelaTabuleiro({
    super.key,
    required this.nomeJogador1,
    required this.nomeJogador2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(nomeJogador1),
          Text(nomeJogador2),
        ],
      ),
    );
  }
}
