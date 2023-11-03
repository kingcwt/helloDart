/**
 * Dart 一个类实现多个接口
 */

abstract class A {
  printA();
}

abstract class B {
  printB();
}

// 一个类实现多个接口
class C implements A, B {
  @override
  printA() {
    print('C');
  }

  @override
  printB() {
    print('C');
  }
}
