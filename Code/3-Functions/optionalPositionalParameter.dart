String sayHello(String name, int age, [String? contry = 'korea']) {
  return "Hello $name, you'r $age and come from $contry";
}

void main() {
  print(sayHello(
    "minkyu",
    29,
  ));
}
