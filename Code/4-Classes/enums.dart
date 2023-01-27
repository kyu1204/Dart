enum Team { red, blue }

enum XPLevels { beginner, medium, pro }

class Player {
  String name;
  XPLevels xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });
}

void main() {
  var player = Player(name: "minkyu", xp: XPLevels.beginner, team: Team.blue)
    ..name = 'mint'
    ..xp = XPLevels.pro
    ..team = Team.red;
}
