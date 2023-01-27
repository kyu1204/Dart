class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  Player.createBlueTeam({
    required this.name,
    required this.age,
  })  : this.xp = 0,
        this.team = 'blue';

  void sayHello() {
    print("Hi my name is $name, xp is $xp and my team is $team");
  }
}

void main() {
  var player = Player(
    name: "minkyu",
    xp: 1500,
    team: "blue",
    age: 29,
  );
  player.sayHello();

  var player2 = Player.createBlueTeam(name: "mint", age: 30);
  player2.sayHello();
}
