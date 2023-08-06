void main(List<String> args) {
  //Stream
  Stream.periodic(const Duration(seconds: 1), (x) => x).listen(print);

  Stream.fromFutures([Future(() => 3), Future.value(2)]).listen(print);
  //asyncgenerator().listen(print);
}


var negativeStream =
    Stream<int>.periodic(const Duration(milliseconds: 500), (x) => -x);

Stream<int> asyncgenerator() async* {
  for (var i = 0; i < 5; i++) {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield 1;
  }
  yield* negativeStream;
}