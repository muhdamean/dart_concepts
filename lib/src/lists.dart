List<int> list = [1, 2, 3];
List<int> list2 = [...list, 4];

var arr = [50, -89.67, 5, 9, 0];
var arr2 = [3, 1, 4];

void listPrint() {
  for (var element in list) {
    print(element);
  }
  print('spread operator');
  for (var element in list2) {
    print(element);
  }
}

void sortArr() {
  //initial arrays
  print('Arr: , ${arr..map((e) => e)}');
  print('Arr2: , ${arr2..map((e) => e)}');

  //sort the array using spread operator
  var arrSort = arr..sort();
  print('Array Sort: , ${arrSort..map((e) => e)}');

  arr.addAll(arr2);
  print('Array Add: , ${arr..map((e) => e+1)}');

  var arrRev = arr.reversed.toList();
  print('Array Reverse: , ${arrRev..map((e) => e)}');

  var arrMap = arr..sort()..map((e) => e + 1).toList();//not adding +1
  print('Array Map(+1) Sort: , ${arrMap..map((e) => e)}');
}
