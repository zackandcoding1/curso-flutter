import 'dart:async';

Stream<int> countDownStream() async* {
  for(int i = 5; i >= 1; i--) {
    yield i;
    await Future.delayed(const Duration(seconds: 1));
  }
}

void main() {
  final Stream<int> countDown = countDownStream();
  
  countDown.listen((number) {
    print('Contagem regressiva: $number');
  });
}
