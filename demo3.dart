/**
 * 1 定义一个animal类要求它的子类必须包含抽象方法
 * 2 抽象类没法实例化 只能被继承
 */

abstract class Animal {
  eat(); // 抽象方法
  run(); // 抽象方法
  printInfo() {
    print('抽象类里面的普通方法');
  }
}

class Dog extends Animal {
  @override
  eat() {
    print('狗吃肉');
  }

  @override
  run() {
    print('狗跑');
  }
}

class Cat extends Animal {
  @override
  eat() {
    print('猫吃鱼');
  }

  @override
  run() {
    print('猫跑');
  }
}

main() {
  Dog d = new Dog();
  Cat c = new Cat();
  c.eat();
  d.eat();
  c.run();
  d.run();
  c.printInfo();
  d.printInfo();
}
