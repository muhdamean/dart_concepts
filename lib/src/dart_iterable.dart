import 'dart:async';

//Future
void main(List<String> args) {
  Future(() => 1).then(print);
  Future(() => Future(() => 2)).then(print);

  Future.delayed(const Duration(seconds: 1), () => 3).then(print);
  Future.delayed(const Duration(seconds: 1), () => Future(() => 4)).then(print);

  Future.value(5).then(print);
  Future.value(Future(() => 6)).then(print); //Future(()=>6)

  Future.sync(() => 7).then(print); // Future.value(7);
  Future.sync(() => Future(() => 8)).then(print); // Future(()=>8);

  Future.microtask(() => 9).then(print);
  Future.microtask(() => Future(() => 10)).then(print);

  Future(() => 11).then(print);
  Future(() => Future(() => 12)).then(print);

  print('End');

}

Iterable<int> showGenerator(int n) sync* {
  print('Generator started');
  for (var i = 1; i <= n; i++) {
    print('i --> $i');
    yield i;
  }
  print('Generator ended');
}
