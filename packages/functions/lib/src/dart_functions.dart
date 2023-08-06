var list =
    ['hello', 'everyone', 'wicked'].map((String s) => s.toUpperCase()).toList();

String applyUpperChanges(String s) {
  return s.toUpperCase();
}

void requiredPositional(int a, int b) => print('$a $b');
void optionalPositional([int a = 5, int? b]) => print('$a $b');
void requiredNamed({required int b, required int a}) => print('$a $b');
void optionalNamed({int a = 5, required int b}) => print('$a $b');
void namedHybrid({required int a, int b = 10}) => print('$a $b');
void mixOfParams(int a, int b, [int c = 5]) => print('$a $b $c');

//Lexical scope function
//var car = makeCar('BMW');
//print(car('MS'));
String Function(String) makeCar(String make) {
  var engine = '4.4 V8';
  return (model) => '$make $model $engine';
}
