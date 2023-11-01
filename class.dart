// class Animal {
//   String name;
//   int age;
//   String _sex;
//   Animal(this.name, this.age, this._sex);
//   void getInfo() {
//     print('${this.name}---${this.age}--${this._sex}');
//   }
// }

// import './lib/Animal.dart';
import './lib/Static.dart';

main() {
  print(StaticLib.name);
  StaticLib.printName();

  var p = new StaticLib(18, 25);
  print(p.age);
  print(p.sex);

  // p.age = 27;
  // p.sex = 0;
  p
    ..age = 27
    ..sex = 1;

  print(p.age);
  print(p.sex);
}
