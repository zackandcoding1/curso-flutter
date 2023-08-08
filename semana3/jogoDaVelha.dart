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

class TelaTabuleiro extends StatefulWidget {
  final String nomeJogador1;
  final String nomeJogador2;

  const TelaTabuleiro({
    super.key,
    required this.nomeJogador1,
    required this.nomeJogador2,
  });

  @override
  State<TelaTabuleiro> createState() => _TelaTabuleiroState();
}

class _TelaTabuleiroState extends State<TelaTabuleiro> {
  List<List<String>> dados = [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];
  bool ehJogador1 = true;

  // Adicionar lógica para verificar ganhador ou empate
  bool ehFimDeJogo() {
    return dados.every((linha) => linha.every((peca) => peca != ''));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Jogo da Velha',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 20),
            for (int i = 0; i < dados.length; i++)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int j = 0; j < dados[i].length; j++)
                        Row(
                          children: [
                            Peca(
                              valor: dados[i][j],
                              aoSelecionar: () {
                                // só preenche o espaço se a casa estiver vazia
                                if (dados[i][j] == '') {
                                  setState(() {
                                    dados[i][j] = ehJogador1 ? 'X' : 'O';
                                    ehJogador1 = !ehJogador1;
                                    // passa a vez para o jogador 2
                                  });
                                }
                              },
                            ),
                            if (j < 2) const DivisorHorizontal()
                          ],
                        ),
                    ],
                  ),
                  if (i < 2) const DivisorVertical(),
                ],
              ),
            const SizedBox(height: 20),
            Text(
              ehFimDeJogo()
                  ? 'O jogo terminou!'
                  : (ehJogador1
                      ? 'É a vez do ${widget.nomeJogador1}'
                      : 'É a vez do ${widget.nomeJogador2}'),
            ),
            if (ehFimDeJogo())
              Padding(
                padding: const EdgeInsets.all(10),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.cyan,
                  child: const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Voltar',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class DivisorHorizontal extends StatelessWidget {
  const DivisorHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      width: 2,
      margin: const EdgeInsets.symmetric(horizontal: 10),
    );
  }
}

class DivisorVertical extends StatelessWidget {
  const DivisorVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 2,
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 10),
    );
  }
}

class Peca extends StatelessWidget {
  final String valor;
  final void Function() aoSelecionar;

  const Peca({
    required this.valor,
    required this.aoSelecionar,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: aoSelecionar,
      child: SizedBox(
        width: 50,
        height: 50,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              valor,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
