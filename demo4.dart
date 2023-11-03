/**
 * Dart中的多态：
 * 在父级类中声明的抽象方法，父类不去实现它，让继承它的子类去实现，每个子类有不同的表现 这就叫多态
 */

abstract class Animal {
  void eat();
  void run();
}

class Dog extends Animal {
  @override
  void eat() {
    print('狗吃肉');
  }

  @override
  void run() {
    print('狗跑');
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print('猫吃鱼');
  }

  @override
  void run() {
    print('猫跑');
  }

  catjump() {
    print('猫跳');
  }
}

main() {
  // 这里需要注意：引用的是子类对象 还是父类对象  如果是父类对象，不能调用子类上定义的方法
  Cat c = new Cat();
  c.catjump();

  Animal a = new Dog();
  a.run();

  Animal b = new Cat();
  b.run();
  // b.catjump(); // error
}
