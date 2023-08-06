//instance valiable == fields
import 'dart:math';

class A {
  A(this._private,
      {this.a,
      required this.b,
      required this.c,
      required this.d,
      required this.e,
      required this.f}); //: f = b {}

  int? _private;
  int? a;
  int b = 1;
  final int c;
  late int d;
  late final int e;
  late int f;
}

class Aa {
  Aa({required this.x, required this.y});

  Aa.zero()
      : x = 0,
        y = 0;

  Aa.fromJson({required Map<String, int> json})
      : x = json['x']!,
        y = json['y']!;

  Aa.zeroX({required int y}) : this(x: 0, y: y);
  Aa.zeroY({required int x}) : this(x: x, y: 0);

  //implemtentation
  //var aa = Aa(x: 1, y: 2);
  //var aaZero = Aa.zero();
  //var aaFromJson = Aa.fromJson(json: {'x': 5, 'y': 10});

  final int x;
  final int y;

  @override
  String toString() => 'Aa(x: $x, y: $y)';
}

//factory constructor
class Point {
  Point({required this.x, required this.y});

  factory Point.random({required bool isPositive}) {
    int minNagativevalue = -99;
    int maxNagativeValue = -1;
    int minPositivevalue = 0;
    int maxPositiveValue = 99;

    int randomNagetiveValue = minNagativevalue +
        Random().nextInt(maxNagativeValue - minNagativevalue);

    int randomPositiveValue = minNagativevalue +
        Random().nextInt(maxPositiveValue - minPositivevalue);

    return isPositive
        ? Point(x: randomPositiveValue, y: randomPositiveValue)
        : Point(x: randomNagetiveValue, y: randomNagetiveValue);
  }

  factory Point.explanation() => Point.random(isPositive: true);

  final int x;
  final int y;

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

class Singleton {
  Singleton._privateConstructor();
  static final Singleton _instance = Singleton._privateConstructor();
  factory Singleton() => _instance;
}

void main(List<String> args) {
  var a = A(1, a: 2, b: 3, c: 4, d: 5, e: 6, f: 7);

  Singleton s1 = Singleton();
  Singleton s2 = Singleton();

  identical(s1, s2);
  print('identical(s1, s2) --> ${identical(s1, s2)}'); 
  var hashCode = a.hashCode;
  print('hashCode --> $hashCode');

  var runtimeType = a.runtimeType;
  print('runtimeType --> $runtimeType');

  var str = a.toString();
  print('str --> $str');
}
