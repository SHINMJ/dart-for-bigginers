class Player {
  final String name;
  int xp;
  String team;

  //constructor - named parameters
  Player({required this.name, required this.xp, required this.team});

  void sayHello() {
    print('Hi my name is $name ($xp). my team is $team');
  }
}

void main() {
  var player = Player(name: 'violet', xp: 111, team: 'blue');
  player.sayHello();
  player.xp = 19900;
  player.team = 'red';
  player.sayHello();
  //cascade notation ..
  var violet = player
    ..xp = 2000
    ..team = 'green'
    ..sayHello();
}
