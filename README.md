# helloDart

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



