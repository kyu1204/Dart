class Human {
  final String name;

  Human({required this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({required this.team, required super.name});

  @override
  void sayHello() {
    super.sayHello();
    print('My team is $team');
  }
}

void main() {
  var player = Player(team: Team.blue, name: "minkyu");

  player.sayHello();
}
