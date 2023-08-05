// import 'package:dart_concepts/dart_concepts.dart' as dart_concepts;
import 'package:dart_concepts/src/calculate.dart';
// import 'package:dart_concepts/src/calculator.dart';
import 'package:dart_concepts/src/lists.dart';

void main(List<String> arguments) {
  try {
    // print('Hello world: ${dart_concepts.calculate()}! ');
    print('Add: ${calculateAdd().toString()}');
    print('Substract: ${calculateSubstract().toString()}');
    print('Divide: ${calculateDivide().toString()}');
    print('Multiply: ${calculateMultiply().toString()}');

//Lists
    print('Print lists package');
    listPrint();
    sortArr();
  } catch (e) {
    print('Error occured!');
  }
}
