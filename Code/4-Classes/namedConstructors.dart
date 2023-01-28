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
  })  : xp = 0,
        team = 'blue';

  Player.createRedTeam(this.name, this.age)
      : xp = 0,
        team = 'red';

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

  var player2 = Player.createBlueTeam(
    name: "mint",
    age: 30,
  );
  player2.sayHello();

  var player3 = Player.createRedTeam("mint2", 10);
  player3.sayHello();
}
