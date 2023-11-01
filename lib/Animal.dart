class Animal {
  late String name;
  late int age;
  late String _sex; // _表示私有属性 不能在外部访问
  late int height;
  late int width;
  Animal(this.name, this.age, this._sex);
  void getInfo() {
    print('${this.name}---${this.age}--${this._sex}');
  }

  set(value) {
    this.height = value;
    this.width = value;
  }
}
