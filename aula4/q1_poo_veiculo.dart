class Veiculo {
  String? marca;
  String? modelo;
  int? anoFabricacao;
  
  Veiculo({
    required this.marca,
    required this.modelo,
    required this.anoFabricacao,
  });
  
  void imprimeInfo() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de fabricação: $anoFabricacao');
  }
}

void main() {
  Veiculo v1 = Veiculo(
    marca: 'Marca X',
    modelo: 'Modelo Y',
    anoFabricacao: 2022
  );
  v1.imprimeInfo();
}
