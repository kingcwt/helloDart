/**
 * identical 是否公用一个存储空间
 */

main() {
  var a = new Object();
  var b = new Object();

  print(identical(a, b));
}
