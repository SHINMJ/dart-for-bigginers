void main() {
  /**
   * 수정이 가능한 변수 선언 방법
   */
  //변수의 타입을 구체화 할 필요 없음.
  // 컴파일러 가 변수의 타입을 추측함.
  // 관습적으로 함수나 메소드 내부에 지역변수를 선언할 때 var를 사용.
  var name = '신맹';
  name = 'shinmj'; //같은 타입으로만 변수를 수정할 수 있음.

  // 명시적으로 타입을 정해줄 수 있음.
  // class 에서 변수나 property를 선언할 때에는 명시적으로 타입을 지정.
  String str = '신맹';
  str = 'shinmj';

  // 여러가지 타입을 가질 수 있는 변수를 만들 수 있는 키워드 dynamic
  // 권장하지는 않지만 효율적으로 사용할 때가 있음. 진짜 필요한 경우에만 사용해야 한다.
  var dname; //변수가 dynamic 타입이 되었음.
  dname = '신맹';
  dname = 1;
  dname = false;
  //명시적으로 선언해 줄 수도 있음.
  dynamic dtype;
  dtype = '신맹';
  dtype = 1;
  dtype = false;
  //dynamic인 경우 타입이 특정되지 않았기 때문에 사용할 때 타입을 확인해 주어야 함.
  if (dtype is String) {
    dtype.length;
  }
  if (dtype is int) {
    dtype.isOdd;
  }

}
