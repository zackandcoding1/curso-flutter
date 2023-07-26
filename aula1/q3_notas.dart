void main() {
    final String nome = 'Isaac Newton Barros Gomes';
    int idade = 23;
    bool ehNovato = false;
    double peso = 70.2;
    final List<int> notas = [6, 7, 8, 9];
    const Set<String> disciplinas = {'Algoritmos', 'POO', 'Banco de Dados'};
    String? endereco = 'Ananindeua, Pará';

    // Adiciona nota
    notas.add(10);

    // Remove nota da 3a posição
    notas.removeAt(2);
  
    // Cria uma sublista com as notas do 1o semestre
    final List<int> notas1Semestre = notas.sublist(0,2);
    print('Notas do 1º semestre: $notas1Semestre');
  
    // Remove o valor 11 da lista
    notas.remove(11);
  
    // Reordena a lista
    notas.sort();
  
    print('Notas: $notas');
}