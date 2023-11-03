/**
 * Null safety
 */

String printInfo(String name, {required int age, required String sex}) {
  // if (age != 0) {
  //   print('${name}---${age}---${sex}');
  //   return '';
  // }
  return '${name}---${age}---${sex}';
}

main() {
  // Null safety   加？表示可空类型
  // ！ 类型断言
  // late  延迟初始化
  // required 必填 表示必须传入的参数
  String? str = '123';

  str = null;

  print(str);
  printInfo('cwt', age: 10, sex: '男');
}
