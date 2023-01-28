class Strong {
  final double strongLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team { red, blue }

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
  });
}

void main() {
  var player = Player(team: Team.blue);
  player.runQuick();
  player.strongLevel;
  player.height;
}
