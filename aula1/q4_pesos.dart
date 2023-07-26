void main() {
    final String nome = 'Isaac Newton Barros Gomes';
    int idade = 23;
    bool ehNovato = false;
    double peso = 70.2;
    final List<int> notas = [6, 7, 8, 9];
    const Set<String> disciplinas = {'Algoritmos', 'POO', 'Banco de Dados'};
    String? endereco = 'Ananindeua, Pará';

    // Transforma a string pesoBalanca em um valor double
    final String pesoBalanca = '70.2';
    double pesoAtual = double.parse(pesoBalanca);

    // Atualiza o pesoAtual para o valor absoluto
    pesoAtual = pesoAtual.abs();

    // Arredonda o valor de pesoAtual
    // Foi criado uma variável int para utilizar o round()
    int pesoAtualArredondado = pesoAtual.round();

    print('Peso: $pesoAtualArredondado kg');
}