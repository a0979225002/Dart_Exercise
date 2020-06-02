
/*
  Dart 對象操作符
  ? 條件運算 (判斷是否空)
  as 類型轉換
  is 類型判斷 (前面以演示,這裡就不演示)
 */

import 'dart:collection';

class Person{

  String name;
  num age; // num 數字類型,可以是int或double,透過小數點自動判斷
  Person(String name, num age){
    this.name = name;
    this.age = age;
  }
  void printInto(){
    print("名字:$name----年齡:$age");
  }
}
void main(){

  Person person;

  person?.printInto();//？判斷person是否是null,只要是空,將不會打印,也不會報錯

  person = new Person("蕭立品", 27);

  person?.printInto();//名字:蕭立品----年齡:27

  HashMap hashMap = new HashMap();

  hashMap.putIfAbsent("name", () => "蕭立品");
  hashMap.putIfAbsent("age", () => "27");

  ///注意在這裡並無法正確演示
  ///as 的用法: 能強制轉型,不過使用時需要確定他是否 is a 如果不是,將會出錯
  ///我在這裡其實return回去時就是一個map 加不加這個 as其實無所謂

  var newMap = hashMap.map((key, value){

    return MapEntry("name02", "蕭立品02");
  }) as Map;


  print(newMap is Map);//true

  print(newMap);//{name02: 蕭立品02}

}