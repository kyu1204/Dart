String sayHello({
  String name = 'mint',
  int age = 30,
  String country = 'korea',
}) {
  return "Hello $name, you are $age, come from $country";
}

String sayHello2({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, come from $country";
}

void main() {
  print(sayHello(
    age: 30,
  ));

  print(sayHello2(
    name: 'minkyu',
    age: 29,
    country: 'korea',
  ));
}
