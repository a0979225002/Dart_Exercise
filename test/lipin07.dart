import 'dart:collection';

void main(){
  ///Set 集合 Set內的值將不會重複,且此陣列並無順序性

  Set set = new HashSet();

  set.addAll(["番茄", "ccc", "cccc", "cccc", "aaa", "香蕉", "桃子"]);

  print(set);//{香蕉, 桃子, 番茄, aaa, ccc, cccc} 注意:你我的順序不會一樣

  ///Maps 集合

  //第一種定義方式
  var person = {
    "name":"lipin",
    "age": 27
  };
  //第二種定義方式

  Map map = new HashMap();

  //兩種新增方式都可以
  map["name"] = "蕭立品";
  map["Game"] = "PS5";

  map.putIfAbsent("age", () => 30);//Lambda表示法

  print(map);//{name: 蕭立品, age: 30, Game: PS5}

//獲得map的key
  ///注意單純拿取map.keys 回傳的屬性不是list map 或Sting
  print(map.keys);//(name, age, Game)
  //如果要使用它 將他轉字串
  print(map.keys.join("/"));//name/age/Game
  //如果要轉list
  List list = map.keys.toList();
  print(list);//[name, age, Game]

//如果要拿取 value
  ///方法都可跟上方拿取key的方式呼叫一樣的 method
  print(map.values.toList());//[蕭立品, 30, PS5]

//刪除

  map.remove("Game");//他會回傳 刪除的value 如果無需使用將不用額外宣告一個值放入刪除值
  print(map);//結果：{name: 蕭立品, age: 30}   Game 這個json被刪除了

//查詢
  //查詢value 是否有30這個值
  ///01:注意 如果一開始宣告的值是int類型 請在這裡的查找中也輸入int類型
  ///02:如果需要查找key 請使用containsKey
  ///他回傳的是一個布林值
  print(map.containsValue(30));//true
  print(map.containsValue("30"));//false



}