import 'dart:io';

void main() {
  stdout.write('Digite o valor do produto: ');
  double valorProduto = double.parse(stdin.readLineSync()!);

  double desconto = 0.3;
  double valorComDesconto = (() => valorProduto - (valorProduto * desconto))();

  print('Produto com desconto aplicado: R\$${valorComDesconto.toStringAsFixed(2)}');
}