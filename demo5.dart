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
