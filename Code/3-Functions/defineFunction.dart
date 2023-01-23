String sayHello(String name) {
  return "Hello my name is $name";
}

String sayHello2(String name, int age) => "Hello my name is $name, I'm $age";

void main() {
  print(sayHello('minkyu'));
  print(sayHello2("minkyu", 29));
}
