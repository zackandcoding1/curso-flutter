import 'dart:io';

void main() {
  print('Digite o preço máximo: ');
  int precoMaximo = int.parse(stdin.readLineSync()!);

  List<int> listaPrecos = [8, 11, 13, 16, 19, 22, 25, 30];

  List<int> precosPares = [];

  for(var i = 0; i < listaPrecos.length; i++) {
    if(listaPrecos[i] % 2 == 0 && listaPrecos[i] <= precoMaximo) {
      precosPares.add(listaPrecos[i]);
    }
  }

  print('Preços pares encontrados: $precosPares');
}