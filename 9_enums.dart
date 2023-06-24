enum Team { red, blue, green }
enum XPLevel {biggner, medium, pro}

class Player {
  final String name;
  XPLevel xp;
  Team team;

  //constructor - named parameters
  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print('Hi my name is $name (${xp.name}). my team is ${team.name}');
  }
}

void main() {
  var player = Player(name: 'violet', xp: XPLevel.biggner, team: Team.blue)..sayHello();
}
