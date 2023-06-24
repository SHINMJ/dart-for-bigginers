/**
 * QQ Ooperator
 */

// 삼항연산자 중 null 값 체크, name이 null 이면 오른쪽 값 null이 아니면 왼쪽값
String capitalizedName(String? name) => name?.toUpperCase() ?? 'ANON';

/**
 * typedef
 * type에 alias를 줄 수 있음.
 */
typedef ListOfInts = List<int>;

ListOfInts reverseListOfNumbers(ListOfInts list) {
  return list.reversed.toList();
}

void main() {
  print(capitalizedName('shinmj'));
  print(capitalizedName(null));

  String? name;
  name ??= 'violet'; // 값이 null 이면 해당 값을 asign 함.
  print(name);

  print(reverseListOfNumbers([1, 2, 3, 4]));
}
