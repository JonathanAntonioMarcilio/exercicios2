Stream<int> numeroStream() async* {
  for(int i = 1; i <= 20; i++){
    yield i;
  }
}


void main() {

  numeroStream()
  .where((n) => n % 2 ==0)
  .map((n) => n * 2)
  .take(5)
  .listen((n) => print(n));

}