printInfo(String username, {sex = '男'}) {
  print(username);
  print(sex);
}

// class Person {
//   String name = 'cwt';
//   int age = 18;

//   Person() {
//     print('构造函数');
//   }

//   void getInfo() {
//     print('${this.name}---${this.age}');
//   }
// }

// class Person2 {
//   late String name;
//   late int age;
//   // 构造函数和 类的名称一样
//   Person2(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }
// }

class Person {
  late String name;
  late int age;
  // 构造函数简写
  // Person(this.name, this.age);

  // 命名构造函数
  Person.now(String name, int age) {
    this.name = name;
    this.age = age;
  }
  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void printInfo() {
    print('${this.name}, ${this.age}');
  }
}

main() {
  // var p = Person.now('cwt', 18);
  var p = Person.setInfo('cwt', 18);
  p.printInfo();
  // print(p.name);
  // var p1 = new Person();
  // print(p1.name);
  // p1.getInfo();

  // var p2 = new Person2('chr', 27);
  // print(p2.name);
  // print(p2.age);
}
