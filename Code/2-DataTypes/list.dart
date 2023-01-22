void main() {
  var numbers = [1, 2, 3, 4];
  List<int> numbers2 = [1, 2, 3, 4];

  numbers.first;
  numbers.last;
  numbers.isEmpty;

  var giveFive = true;
  var numbers3 = [
    1,
    2,
    3,
    4,
    if (giveFive) 5,
  ];

  print(numbers3);

  var oldFriends = ["철수", "영희"];
  var newFriedns = [
    "민식",
    "잼민",
    for (var friend in oldFriends) "🌱 $friend",
  ];
  print(newFriedns);
}
