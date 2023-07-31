import 'dart:io';

double calculaMedia(List<double> notas) {
  double totalNotas = 0;

  for(var i = 0; i < notas.length; i++) {
    totalNotas += notas[i];
  }

  return totalNotas / notas.length;
}

void main() {
  List<double> notas = [];

  print("Digite as notas dos estudantes (Digite 'fim' para encerrar): ");
  String? input = stdin.readLineSync();

  while(input != 'fim') {
    double nota = double.parse(input!);
    notas.add(nota);
    input = stdin.readLineSync();
  }

  double media = calculaMedia(notas);
  print('Média das notas: $media');  
}
