import 'dart:math';
import 'dart:io';

void main() {
    int? numeroEscolhido;
    int numeroCorreto = Random().nextInt(10);
    int tentativas = 5;
    
    while(numeroEscolhido != numeroCorreto) {
        stdout.write('Escolha um número: ');
        numeroEscolhido = int.parse(stdin.readLineSync()!);
        
        if(numeroEscolhido < numeroCorreto) {
            print('O número secreto é maior');
            tentativas--;
        } else if(numeroEscolhido > numeroCorreto) {
            print('O número secreto é menor');
            tentativas--;
        } else if(numeroEscolhido == numeroCorreto) {
            print('Número secreto encontrado');
            break;
        }
        
        print('Tentativas restantes: $tentativas');
        
        if(tentativas == 0) {
            print('Sem tentativas restantes.');
            break;
        }
  }
}
