abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XPLevels { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevels xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void walk() {
    print("i'm walking");
  }
}

void main() {
  var player = Player(name: "minkyu", xp: XPLevels.beginner, team: Team.blue)
    ..name = 'mint'
    ..xp = XPLevels.pro
    ..team = Team.red;

  player.walk();
}
