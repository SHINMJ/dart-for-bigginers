void main() {
  /**
   * 불변  
   */
  // 불변 변수 선언
  final name = 'shinmj';
  // 변수의 타입을 선언해 주어도 된다.
  // 하지만 어차피 한번만 정의할 수 있고 타입추론이 가능하기 때문에 보통은 생략한다.
  final int age = 111;

  /**
   * late  
   * 변수 선언을 먼저하고 데이터를 나중에 넣을 수 있다. final 이어도!!!
   */
  late final String owner;
  // do somethind, go to api...

  //print(owner); 값을 넣기 전에 접근할 수 없음. null safety..
  owner = 'shinmj'; // final 변수 이기 때문에 한 번 정한 데이터는 변경할 수 없다.
  print(owner);
  //owner = 'shin'; 할 수 없음.

  /**
   * const => 타입스크립트나 자바스크립트의 const와는 다름. 
   * compile-time constant => 컴파일 할때 알고 있는 값. 
   * 즉, 앱스토어에 앱을 올리기 전에 값을 알고 있다면 const??!!!
   * 수정할 수 없음. 컴파일 시 이미 알고 있어야 함. final은 런타임 중에 만들어 질 수 있음.
   */
  const max_allowed_pricec = 130; // 컴파일때 평가됨.
  const api_key = '12312312312312312';
}
