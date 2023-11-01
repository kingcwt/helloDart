class Person {
  String name = 'cwt';
  int age = 18;
  Person(this.name, this.age);
  void printInfo() {
    print('父类-printInfo=>${this.name}---${this.age}');
  }
}

class Web extends Person {
  // Web(super.name, super.age);
  late String sex;
  Web(String name, int age, String sex) : super(name, age) {
    this.sex = sex;
  }
  run() {
    print('${this.name}---${this.age}---${this.sex}');
    super.printInfo();
  }

  // 复写父类的方法
  @override
  void printInfo() {
    print('子类-printInfo=>${this.name}---${this.age}');
  }
}

main() {
  Web w = new Web('chr', 27, '男');
  // w.age = 20;
  w.printInfo();
  w.run();
}
