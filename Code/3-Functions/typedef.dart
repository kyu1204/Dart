typedef ListOfInteger = List<int>;

ListOfInteger reverseListOfNumbers(ListOfInteger list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reverseListOfNumbers([1, 2, 3]));
}
