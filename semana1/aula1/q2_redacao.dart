void main() {
    String redacao = 'As férias foram mais melhor e bastante Lorem ipsum dolor sit amet, consectetur adipiscing elit.';
    
    final bool containsFerias = redacao.contains('férias');
    print('Fala sobre férias: $containsFerias');
  
    if(redacao.length < 15) {
        int lengthPalavras = redacao.split(' ').length;
        print('A redação não contém a quantidade de palavras mínima (20)');
        print('Quantidade atual de palavras: $lengthPalavras');
    } else {
        print(redacao);
    }
  
    String r = redacao.replaceAll('mais melhor', 'melhor');
    print('Redação corrigida: $r');
}