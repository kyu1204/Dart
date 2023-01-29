class Player {
  late final String name;
  late int xp;

  Player(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }

  void sayHello() {
    print("Hello my name is $name");
  }
}

class Player2 {
  final String name;
  int xp;

  Player2(this.name, this.xp);

  void sayHello() {
    print("Hello my name is $name");
  }
}

void main() {
  var player = Player("minkyu", 1500);
  player.sayHello();
  var player2 = Player("mint", 1000);
  player2.sayHello();
}
