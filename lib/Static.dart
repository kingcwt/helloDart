class StaticLib {
  late int age;
  late int sex;
  StaticLib(this.age, this.sex);
  static String name = 'chr';
  static void printName() {
    print(name);
  }
}
