void main() {
  int n = 15;
  bool isTrue = true;
  
  if(n > 10 && n < 20) {
    print(isTrue);
  } else {
    print(!isTrue);
  }
  
  n = 50;
  if(n == 0 || n == 50) {
    print(isTrue);
  } else {
    print(!isTrue);
  }
  
  n = 100;
  if(n != 100 || n == 200) {
    print(isTrue);
  } else {
    print(!isTrue);
  }
}
