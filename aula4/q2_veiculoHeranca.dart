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

class Carro extends Veiculo {
  double? quilometragemAno;
  int? numeroPortas;
  
  @override
  void imprimeInfo() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de fabricação: $anoFabricacao');
    print('Quilometragem por ano: $quilometragemAno\km');
    print('Número de portas: $numeroPortas');
  }
  
  Carro({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required this.quilometragemAno,
    required this.numeroPortas
  });
}

class Moto extends Veiculo {
  int? numeroCilindradas;
  bool? hasPartidaEletrica;
  
  Moto({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required this.numeroCilindradas,
    required this.hasPartidaEletrica
  });
  
  @override
  void imprimeInfo() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de fabricação: $anoFabricacao');
    print('Número de cilindradas: $numeroCilindradas');
    print('Possui partida elétrica: $hasPartidaEletrica');
  }
}

void main() {
  Carro c1 = Carro(
    marca: 'Marca X',
    modelo: 'Modelo Y',
    anoFabricacao: 2022,
    quilometragemAno: 15000,
    numeroPortas: 4
  );
  
  Moto m1 = Moto(
    marca: 'Marca A',
    modelo: 'Modelo B',
    anoFabricacao: 2023,
    numeroCilindradas: 400,
    hasPartidaEletrica: true
  );
  
  c1.imprimeInfo();
  m1.imprimeInfo();
}
