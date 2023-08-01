abstract class Veiculo {
  final String? marca;
  final String? modelo;
  final int? anoFabricacao;
  
  const Veiculo({
    required this.marca,
    required this.modelo,
    required this.anoFabricacao,
  });
  
  void imprimeInfo() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de fabricação: $anoFabricacao');
  }

  String get defineAdesivo;
}

class Carro extends Veiculo {
  final double quilometragemAno;
  final int numeroPortas;

  const Carro({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required this.quilometragemAno,
    required this.numeroPortas
  });
  
  @override
  void imprimeInfo() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de fabricação: $anoFabricacao');
    print('Quilometragem por ano: $quilometragemAno\km');
    print('Número de portas: $numeroPortas');
  }

  @override
  String get defineAdesivo {
    if(quilometragemAno < 15000) return 'seminovo';
    if(quilometragemAno >= 15000 && quilometragemAno <= 20000) return 'usado';
    return 'velho';
  }
}

class Moto extends Veiculo {
  final int cilindradas;
  final bool hasPartidaEletrica;

  const Moto({
    required super.marca,
    required super.modelo,
    required super.anoFabricacao,
    required this.cilindradas,
    required this.hasPartidaEletrica
  });
  
  @override
  void imprimeInfo() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano de fabricação: $anoFabricacao');
    print('Número de cilindradas: $cilindradas');
    print('Possui partida elétrica: $hasPartidaEletrica');
  }

  @override
  String get defineAdesivo {
    if(cilindradas < 125) return 'leve';
    if(cilindradas >= 125 && cilindradas < 500) return 'normal';
    return 'esportiva';
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
    cilindradas: 400,
    hasPartidaEletrica: true
  );
  
  c1.imprimeInfo();
  print(c1.defineAdesivo);
  m1.imprimeInfo();
  print(m1.defineAdesivo);
}