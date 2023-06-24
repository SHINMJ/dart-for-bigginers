import '5_functions.dart';

abstract class Human {
  final String name;

  Human({required this.name});

  void walk();

  void sayHello() {
    print('Hi my name is $name');
  }
}

enum Team { red, blue, green }

enum XPLevel { biggner, medium, pro }

//Human 클래스를 상속(Inheritance)
class Player extends Human {
  XPLevel xp;
  Team team;

  //constructor - named parameters
  Player({required name, required this.xp, required this.team})
      : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print(' my team is ${team.name}');
  }

  @override
  void walk() {
    print('$name walking..');
  }
}

class Coach extends Human {
  Coach({required super.name});

  @override
  void walk() {
    print('$name is coach. I\'m walking..');
  }
}

void main() {
  var player = Player(name: 'violet', xp: XPLevel.biggner, team: Team.blue)
    ..sayHello();
  player.walk();

  var coach = Coach(name: 'neo')
    ..sayHello()
    ..walk();
}
