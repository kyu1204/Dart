class Player {
  String name;
  int xp;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });
}

void main() {
  var player = Player(name: "minkyu", xp: 1000, team: 'blue')
    ..name = 'mint'
    ..xp = 150000
    ..team = 'red';
}
