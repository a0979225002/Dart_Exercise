///泛型用法 抽象類
///抽象或繼承,可隨意在實例化時,才宣告要傳入的屬性
abstract class Mysql<T>{
  T data;
  void add(T value);
}
abstract class MongoDB<T>{
  T list;
  void set(T value);
}

class Mydatabase<T> implements MongoDB<T>,Mysql<T>{
  @override
  T data;

  @override
  T list;

  @override
  void add( T value) {
    this.data = value;
    print(data);
  }

  @override
  void set(T value) {
    this.list = value;
    print(list);
  }
}


void main(){

  ///指定傳入Map類型
  Mydatabase mydatabase = new Mydatabase<Map>();

  mydatabase.add({"name": "優衣","age":123});//{name: 優衣, age: 123}


  ///指定傳入List類型
  Mydatabase mydatabase02 = new Mydatabase<List>();

  mydatabase02.set(["我是list"]);//[我是list]

}