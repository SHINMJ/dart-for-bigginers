/**
 * Functions
 */

/**
 * positional parameters
 * 순서를 기억해야 함.
 */
//파라미터로 String 타입을 받고 아무것도 return 하지 않는(void 타입의) function
void sayHello(String name, [int? age]) {
  print('Hello $name ${age != null ? "you are $age" : ""} nice to meet you!!!');
}

//fat arrow syntax는 바로 return 하는 것과 같음.
/**
 * 아래 function 과 같음
 * String arrowSayHello(String name) {
 *  return 'Hello $name nice to meet you!!!';
 * }
 */
String returnSayHello(String name) => 'Hello $name nice to meet you!!!!!';

/**
 * named parameters
 * 순서와 상관없이 key(name)를 사용해 파라미터를 사용할 수 있음.
 * 파라미터에 default 값을 줄수도 있고, '?'와 required를 사용해 필수 파라미터와 아닌 파라미터 구분 가능.
 */
String namedParamSayHello(
    {required String name, int age = 10, String country = 'korea'}) {
  return 'Hello $name, you are $age and your came from $country. nice to meet you!!!!!';
}

void main() {
  sayHello('shinmj');
  sayHello('violet', 22);
  print(returnSayHello('shinmj'));
  print(namedParamSayHello(name: 'violet', country: 'republic of korea'));
}
