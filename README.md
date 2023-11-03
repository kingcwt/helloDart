# helloDart



Dart Pub包管理系统中的库

```
https://pub.dev/packages
```

Dart 内置库

```
import 'dart:xx';
```



download dart

```Plain Text
brew tap dart-lang/dart
brew install dart

```

定义变量

```dart
var str = '';
String str = "";
int num = 123;
```

定义常量

```dart
const p = 12356;
final a = new DateTime.now() // right
const a = new DateTime.now() // error
```

Dart中支持以下数据类型

```Plain Text
常用数据类型
Numbers(数值)：
  int
  double
Strings(字符串)：
  String
Booleans(布尔)：
  bool
List(数组)：
  在Dart中，数组是列表对象，所以大多数人只是称它们为列表
Map(字典):
  通常来说，Map是一个键值对相关的对象。键和值可以是任何类型的对象
```

字符串

```dart
// 字符串换行 '''123''' 三个单引号或者三个双引号
 var str = '''12
  3''';
// 字符串拼接
var str1 = 'hello';
var str2 = 'world';
var str = '$str1 $str2';
print(str);
```

数值

```dart
// double 即可以是整型也可以是浮点型 int只能是整型
int a= 1;
double b = 2.0;
print(a);
print(b);
```

布尔

```dart
bool flag = true;
print(flag);

// 条件判断。  
 bool flag = true;
  if(flag){
    print('yes');
  }else{
    print('no');
  }
// == 要类型和值都一样
 const a = 1;
  const b = '2';
  if(a==b){
    print('yes');
  }else{
    print('no');
  }
```

数组

```dart
var l1 = ['1',2,true];
print(l1);
print(l1.length);
print(l1[2]);
// 指定类型
var l2 = <String>['123','4'];
print(l2);
print(l2.length);
print(l2[0]);
// 增加数据
var l3 = [];
print(l3);
l3.add('1');
print(l3);

// 如果默认是number不能在add别的类型
var l3 = [1];
l3.add('1'); // error
// 如果默认是number,string 可以增加 number or string
var l3 = [1,'hello'];
l3.add('1'); 
l3.add(2); 
// dynamic 动态数据类型
var l3 =<dynamic>[3];
print(l3);
l3.add(4);
l3.add('ok');
print(l3);
 // 创建一个固定长度的集合
var l4 = List.filled(2,'ok');
l4[1] = 'hello';
print(l4);

// 通过[]创建的集合是可以通过length改变长度的
 var l5 = [1,2];
print(l5.length);
l5.length = 0;
print(l5);

// 方法

 var l1 = ['123',true];
  print(l1.length);
  print(l1.isEmpty);
  print(l1.isNotEmpty);
  print(l1.reversed); // 对列表倒序
  print(l1.reversed.toList()); // 对列表倒序排序 输出一个数组
  l1.add('456');
  print(l1);
  l1.remove('123');
  print(l1);
  l1.addAll(['789']); // 拼接数组 追加 类似于js concat
  print(l1);
  print(l1.indexOf('p')); // -1 查不到返回-1
  print(l1.lastIndexOf('456')); // 1 查到返回值对应的下标
  print(l1.removeAt(2)); // 根据下标删除
  print(l1);


  var l2 = ['苹果','香蕉','西瓜'];
  l2.fillRange(0,1,'梨子'); // 类似js splice
  print(l2);

  l2.insert(1,'葡萄'); // 插入数据
  print(l2);
  l2.insertAll(1, ['梨子1','西瓜1','香蕉1']); // 插入多个
  print(l2);
  
  var l3 = ['苹果','香蕉','西瓜'];
  var str = l3.join(','); // 数组转字符串
  print(str);

  var arr = str.split(','); // 字符串转数组
  print(arr);




// 遍历
var l1 = ['1',2,true];
l1.forEach((item){
  print(item);
});


var l2 = [1,2,3];
var list = l2.map((item){
  return item*2;
});

print(list.toList());



var l2 = [1,2,3];
var list = l2.any((item){
  return item >2;
});
print(list); // true 只要有一个满足就返回true


var l2 = [1,2,3];
var list = l2.every((item){
  return item >2;
});
print(list); // false 每一个都要满足条件才能返回true 否则false

```

Maps

```dart
// 和js对象类似

// key 必须是字符串 
 var person = {
    'name':'张三',
    'age':18,
  };
  print(person);
  print(person['name']);

// new的方式
var p = new Map();
  p['name'] = '张三';
  p['age'] = 18;
  print(p);
  print(p['name']);


// 方法
  var person = {
    "name":"张三",
    "age":18
  };

  var m = new Map();
  m.addAll(person);
  print(m);
  print(m.keys.toList()); // [name, age]
  print(m.values.toList()); // [张三, 18]

  person.remove('name'); // {age: 18}
  print(person);

  print(m.containsKey('name')); // true
  print(m.containsValue(18)); // true 

  for(var key in m.keys){
    print(key);
    print(m[key]);
  }

```

类型判断

```dart
var str = '213';
  if(str is String){
    print('string');
  }else if(str is int) {
    print('int');
  }else{
    print('other');
  }
```

运算符

```dart
int a =12;
int b= 3;
print(a+b);
print(a-b);
print(a*b);
print(a/b);
print(a%b); // 取余
print(a~/b);// 取整
```

类型转换

```dart
String str = '123';
var n = int.parse(str);
print(n is int);

int w = 123;
var s = w.toString();
print(s is String);

var d = '';
if(d.isEmpty){
  print('yes');
}else{
  print('no');
}
  
```

Set

```dart
 var s = new Set();
  s.add('123');
  print(s); // {123}
  var arr = s.toList();
  print(arr); // [123]
  
  var ml = ['苹果','苹果','香蕉','西瓜','香蕉','西瓜'];
  // var s2 = new Set();
  // s2.addAll(ml);
  var s2 = Set.from(ml);
  print(s2); // {苹果, 香蕉, 西瓜}
  var l2 = s2.toList();
  print(l2); // [苹果, 香蕉, 西瓜]
  // 也可以 new Set() 然后通过addAll([xx,xx])来添加元素 然后通过toList()来获取元素 效果一样

```

类

```dart
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


//lib/animal.dart
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



// .. 表示级联 如下面的p.age = 27;p.sex=0; === p..age=27..sex=0;

class StaticLib {
  late int age;
  late int sex;
  StaticLib(this.age, this.sex);
  static String name = 'chr';
  static void printName() {
    print(name);
  }
}


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
```

类继承

```dart
class Person {
  String name = 'cwt';
  int age = 18;
  void printInfo() {
    print('${this.name}---${this.age}');
  }
}

class Web extends Person {}

main() {
  Web w = new Web();
  w.age = 20;
  w.printInfo();
}


// 构造函数继承
class Person {
  String name = 'cwt';
  int age = 18;
  Person(this.name, this.age);
  void printInfo() {
    print('${this.name}---${this.age}');
  }
}

class Web extends Person {
  // Web(super.name, super.age); // 简写
  Web(String name, int age) : super(name, age); 
}

main() {
  Web w = new Web('chr', 27);
  // w.age = 20;
  w.printInfo();
}

// 覆写父类方法
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


```



抽象类

 ```dart
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
 
 ```

多态

```dart
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

```

接口

```dart
import './lib/Mssql.dart';
/**
 * 实现接口
 */

abstract class DB {
  late String url;
  add(String info);
  update();
  delete();
}

// implements 实现接口
class Mysql implements DB {
  @override
  add(String info) {
    print('mysql add --- ' + info);
  }

  @override
  update() {
    print('mysql update');
  }

  @override
  delete() {
    print('mysql delete');
  }

  @override
  late String url;

  Mysql(this.url);
}

main() {
  Mysql m = new Mysql('http://www.baidu.com');
  m.add('what the fuck are you doing ?');
  m.update();
  m.delete();

  Mssql s = new Mssql('http://www.baidu.com');
  s.add('what the fuck are you doing ?');
  s.update();
  s.delete();
}



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

```

Mixins

```dart
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

```

泛型

 ```dart
 
 /**
  * 泛型
  * 泛型类
  */
 
 T getData<T>(T value) {
   return value;
 }
 
 class MyList<T> {
   List list = <T>[];
   void add(T value) {
     list.add(value);
   }
 
   List getList() {
     return list;
   }
 }
 
 main() {
   // print(getData<String>('123'));
   // print(getData<int>(222));
 
   MyList l = MyList<int>();
   l.add(1);
   l.add(2);
   MyList l2 = MyList<String>();
   l2.add('o1');
   l2.add('o2');
   print(l.getList());
   print(l2.getList());
 }
 
 
 /**
  * 泛型接口
  */
 abstract class Cache<T> {
   getByKey(String key);
   void setByKey(String key, T value);
 }
 
 class FileCatche<T> implements Cache<T> {
   @override
   getByKey(String key) {}
 
   @override
   void setByKey(String key, T value) {
     print('文件：key=$key,value=$value');
   }
 }
 
 class MemoryCache<T> implements Cache<T> {
   @override
   getByKey(String key) {}
 
   @override
   void setByKey(String key, T value) {
     print('内存：key=$key,value=$value');
   }
 }
 
 main() {
   MemoryCache m = new MemoryCache<Map>();
   m.setByKey('index', {'name': '章三', 'age': 18});
 }
 
 ```

Request 

```dart
import 'dart:io';
import 'dart:convert';

getDatafromxx() async {
  // https://news-at.zhihu.com/api/3/stories/latest

  // create htppsclient object
  var httpClient = new HttpClient();
  // create uri object
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  // send request
  var request = await httpClient.getUrl(uri);
  // close request
  var response = await request.close();
  // get response
  return await response.transform(utf8.decoder).join();
}

void main() async {
  var result = await getDatafromxx();
  print(result);
}

```

引入第三方库

```dart
//1 在文件下新建pubspec.yaml文件 增加以下内容 http这个是引入的模块包 
name: xxx
description: adadada
dependencies:
  http: ^1.1.0
environment:
  sdk: '^3.1.0'
    
//2 命令行 执行 dart pub get 安装
    
// 3 示例代码
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // import 'package:http/http.dart' as http;

  var url = Uri.https('news-at.zhihu.com', '/api/3/stories/latest');
  var response = await http.get(url);
  print('Response status: ${response.statusCode}');
  print('Response body: ${response.body}');

  print(await http.read(Uri.https('example.com', 'foobar.txt')));
}

```

导入

  ```dart
  import 'package:http/http.dart' as http; // 重命名
  import 'package:http/http.dart' show http; // 部分导入
  import 'package:http/http.dart' hide http; // 部分导入
  ```

3.x 新特性

 ```dart
 /**
  * Null safety
  */
 
 String printInfo(String name, {required int age, required String sex}) {
   // if (age != 0) {
   //   print('${name}---${age}---${sex}');
   //   return '';
   // }
   return '${name}---${age}---${sex}';
 }
 
 main() {
   // Null safety   加？表示可空类型
   // ！ 类型断言
   // late  延迟初始化
   // required 必填 表示必须传入的参数
   String? str = '123';
 
   str = null;
 
   print(str);
   printInfo('cwt', age: 10, sex: '男');
 }
 
 
 /**
  * identical 是否公用一个存储空间
  */
 
 main() {
   var a = new Object();
   var b = new Object();
 
   print(identical(a, b));
 }
 
 ```

