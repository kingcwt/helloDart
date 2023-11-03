abstract class DB {
  late String url;
  add(String info);
  update();
  delete();
}

class Mssql implements DB {
  @override
  add(String info) {
    print('mssql add --- ' + info);
  }

  @override
  update() {
    print('mssql update');
  }

  @override
  delete() {
    print('mssql delete');
  }

  @override
  late String url;

  Mssql(this.url);
}
