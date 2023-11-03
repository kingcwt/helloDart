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
