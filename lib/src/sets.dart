var set1 = {1, 2, 3};
var set2 = {2, 3, 4};

void printSets(){
  var intersect= set1.intersection(set2);
  var union= set1.union(set2);
  var difference= set1.difference(set2);

  print('Intersect: $intersect');
  print('Union: $union');
  print('Difference: $difference');
}