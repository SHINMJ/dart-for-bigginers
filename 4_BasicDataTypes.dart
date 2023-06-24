/**
 * 기본적인 데이터 타입
 */
void main() {
  /**
   * 모든 데이터 타입이 class이고 object를 상속받고 있다.
   */
  String name = 'shinmj'; //or "shinmj"
  bool alive = true;
  int age = 20;
  double money = 29.22;
  num x = 12;
  x = 1.1;

  /**
   * List
   */
  var giveMeFive = true;
  var numbers = [
    1,
    2,
    3,
    4,
    //collection if ; 컬렉션 선언 시 if문을 사용할 수 있음.
    //(만약 giveMeFive 가 true이면 5를 추가)
    if (giveMeFive) 5,
  ]; // List<int>

  /**
   * String interpolation
   * String에서 '$' 뒤에 변수(or operation)를 붙일 수 있음.
   */
  var greeting = "Hello everyone, my name is $name and I'm ${age + 2}";
  print(greeting);

  /**
   * collection for
   * 컬렉션 선언 시 for문 사용
   */
  var oldFriends = ['shinmj', 'neo'];
  var newFriends = [
    'ralph',
    'violet',
    for (var friend in oldFriends) {"💝 $friend"}
  ];
  print(newFriends);

  /**
   * Map ; key와 value를 가진 자료형
   */
  var player = {
    'name': 'shinmj',
    'xp': 19,
    'superpower': false
  }; //Map<String, Object>

  /**
   * Sets ; 중복을 허용하지 않는 리스트. 
   */

  var numberSets = {1, 2, 3, 4, 5}; //Set<int>
  numberSets.add(1);
  numberSets.add(1);
  numberSets.add(1);
  print(numberSets); //1,2,3,4,5
}
