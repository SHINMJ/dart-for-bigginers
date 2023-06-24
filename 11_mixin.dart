class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("runnnnnnnnn");
  }
}

enum Team { red, blue, green }

enum XPLevel { biggner, medium, pro }

//with 키워드로 다른 클래스의 프로퍼티와 메소드를 가져올 수 있음. 상속과는 다른 개념.
class Player with Strong, QuickRunner {
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
  var player = Player(name: 'violet', xp: XPLevel.biggner, team: Team.blue)
    ..sayHello();
  player.runQuick();
}
