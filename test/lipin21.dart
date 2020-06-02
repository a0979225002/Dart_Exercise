
///第三方庫,內部庫 import 介紹

import 'dart:math';
import 'dart:collection';

main(){
  ///使用math這個 api
  print(min(12, 23));//獲取最小數
  print(max(12, 25));//獲取最大數

  ///取得隨機數,大樂透

  Random rand = new Random();

  Set set = new HashSet();
  for(int i = 0; i<6; i++){

    int number = rand.nextInt(49)+1;

    if(!set.contains(number)){
      set.add(number);
    }else if(i >1 && set.contains(number)){
      i--;
      print(11);
    }
  }
  print("set: $set");
  List list = new List();
  list = set.toList();



  ///不懂的話 請command + 右鍵sort 看這個字的方法,官方寫的挺用心

  //由大排到小
  list.sort((a,b)=>b.compareTo(a));
  print(list);//[44, 42, 40, 29, 5]

  //默認由小排到大
  list.sort();

  print(list);//[5, 29, 40, 42, 44]

}