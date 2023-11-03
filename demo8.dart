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
