/**
 * mixins 不是继承 也不是接口 而是一种全新的特性
 * 1 mixin类不能有构造函数
 * 2 mixin类不能继承其他类
 * 
 */

class Person {
  late String name;
  late int age;
  Person(this.name, this.age);
  printInfo() {
    print('${this.name}---${this.age}');
  }
}

mixin A {
  void printA() {
    print('A');
  }
}

mixin B {
  void printB() {
    print('B');
  }
}

class C with A, B {}

class D extends Person with A, B {
  D(String name, int age) : super(name, age);
}

main() {
  C c = new C();
  c.printA();
  c.printB();

  D d = new D('cwt', 27);
  d.age = 28;
  d.printInfo();
  d.printA();
  d.printB();
}
