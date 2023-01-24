class Player {
  final String name = "minkyu";
  int xp = 1500;

  void sayHello() {
    print("Hello my name is $name");
  }
}

void main() {
  var player = Player();
  player.sayHello();
  // player.name = 'mint'; (X)
}
