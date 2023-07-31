Future<void> fetchData() async {
  Future.delayed(Duration(seconds: 3), () {
    print('Dados obtidos');
  });
}

void main() async {
  print('Obtendo dados...');
  await fetchData();
}
