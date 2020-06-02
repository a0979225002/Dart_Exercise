void main(){
  //list 常用方法

  List list = ["香蕉","蘋果","番茄"];

  list.length;// 獲得長度

  list.add("橘子");//新增

  print(list); //[香蕉, 蘋果, 番茄, 橘子]

  print(list.isEmpty);//檢查陣列是否為空 false

  print(list.isNotEmpty); //檢查陣列是否不為空 true

  ///注意在這裡,翻轉後他將不會是list,  is not list
//  print(list.reversed);//翻轉陣列    //結果(橘子, 番茄, 蘋果, 香蕉)


  //如果要使用翻轉後還是list呢?
  List list02 = list.reversed.toList();

  print(list02[0]);//答案變成了 橘子

  //剛剛的add新增只能新增一個,如果想新增多個呢？
  
  list02.addAll(["葡萄","桃子"]);//拼接

  print(list02);//[橘子, 番茄, 蘋果, 香蕉, 葡萄, 桃子]

//搜尋陣列內該物件是第幾個index
  ///如果搜尋結果為0的話,indexOf將會傳回 -1 的值
  print(list02.indexOf("桃子"));// 5
  print(list02.indexOf("桃子01"));// -1

//如果要刪除呢？

  list02.remove("葡萄");//刪除該值

  print(list02);//[橘子, 番茄, 蘋果, 香蕉, 桃子]

  list02.removeAt(0);//刪除陣列的該索引值

  print(list02);//[番茄, 蘋果, 香蕉, 桃子]

//如果要修改其中一個值呢？
  ///參數:fillRange(開始,結束,修改的值); 跟java的subString Method 一樣用法
  list02.fillRange(1,2, "aaa");

  print(list02);//[番茄, aaa, 香蕉, 桃子]

//如果想要指定的索引位置新增值?

  list02.insert(1, "葡萄");//單獨新增
  print(list02); //[番茄, 葡萄, aaa, 香蕉, 桃子]

  list02.insertAll(1, ["bbb","cccc"]);//多個新增
  print(list02);//[番茄, bbb, cccc, 葡萄, aaa, 香蕉, 桃子]

//list轉成字串

  String bbb = list02.join("/");

  print(bbb);//  番茄/bbb/cccc/葡萄/aaa/香蕉/桃子

//將字串轉成list
  
  List list03 = bbb.split("/");

  print(list03);//[番茄, bbb, cccc, 葡萄, aaa, 香蕉, 桃子]

}