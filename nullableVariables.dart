/**
 * null safety = 어떤 변수, 혹은 데이터가 null이 될수 있음을 명시하는 것
 * 컴파일 단계에서 null 값에 대해 보호
 */

// without null safety
bool isEmpty(String string) => string.length == 0;

void main() {
  //null 타입은 허용이 안됨. 컴파일 자체가 안됨.
  //isEmpty(null);

  // null을 허용하기 위해서는 다음과 같이 사용.
  String? str = 'shinmj';
  str = null;
  // 존재를 확인하고 메서드를 실행할 수 있도록 함.
  str?.length;

  // 기본적으로 모든 변수는 non-nullable임
  String name = 'shinmj';
  // ? 를 붙여주면 nullable 이 됨.
  String? nullableName = null;
}
