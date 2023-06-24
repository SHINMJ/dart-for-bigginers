/**
 * Classes
 */

class Player {
  final String name;
  int xp;
  String team;

  //constructor - positional parameters
  //Player(this.name, this.xp);

  //constructor - named parameters
  Player({required this.name, required this.xp, required this.team});

  //named constructor
  Player.createBluePlayer({required this.name})
      : this.team = 'blue',
        this.xp = 0;
  Player.createGreenPlayer(this.name)
      : this.team = 'green',
        this.xp = 0;

  Player.fromJson(Map<String, dynamic> jsonData)
      : name = jsonData['name'],
        xp = jsonData['xp'],
        team = jsonData['team'];

  void sayHello() {
    print('Hi my name is $name ($xp). my team is $team');
  }
}

void main() {
  var player = Player(name: 'violet', xp: 1000, team: 'red');
  player.sayHello();
  var player2 = Player.createBluePlayer(name: 'neo');
  player2.sayHello();
  var player3 = Player.createGreenPlayer('shinmj');
  player3.sayHello();

  var apiData = [
    {'name': 'violet', 'xp': 1000, 'team': 'red'},
    {'name': 'neo', 'xp': 2000, 'team': 'green'},
    {'name': 'shinmj', 'xp': 1300, 'team': 'blue'},
  ];

  apiData.forEach((jsonData) {
    var player = Player.fromJson(jsonData);
    player.sayHello();
  });
}
