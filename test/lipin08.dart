void main(){

  List list = new List();

  list.addAll(["香蕉","蘋果","橘子"]);

//foreach新寫法 記得沒錯 java 的lambda表示匿名寫法也是這樣

  list.forEach((value) {
    print(value);

    /*結果:
    香蕉
    蘋果
    橘子
     */

  });
//改值 新寫法
  //例子 將list內的值都*2
  List newList = new List();
  newList.addAll([100,200,300]);

  var str =  newList.map((value){

   return value*2;

  });

  print(str.toList());//[200, 400, 600]

//查找
  //例子:查找陣列中大於5的值
  List newList02 = new List();

  newList02.addAll([1,2,3,4,5,6,7,8]);

  ///如果只有一行要執行的上面的寫法也可改這樣寫,這樣寫更快
  var str02 = newList02.where((value) => value>5);

  print(str02.toList());//[6, 7, 8]

//是否滿足條件
  //查詢是否陣列的值有大於5的

  ///只要其中一個有滿足就會返回true
  var str03 =  newList02.any((value) => value>7);
  print(str03);//true

  ///需全部滿足

  var str04 = newList02.every((value) => value>5);
  //並時事全部值都大於5,所以這裡返回false
  print(str04);//false

  //將6前面的值刪除
  newList02.removeRange(0, 5);
  print(newList02);//[6, 7, 8]
  //比較陣列內的值是否都大於5
  var str05 = newList02.every((value) => value>5);
  print(str05);//true

///額外補充 map
  var person = {
    "name":"lipin",
    "age": 27
  };
  ///如果要拿取 forEach((key, value)的值的話 請加入$字號
  person.forEach((key, value) {
    String newkey = "$key";
    String newvalue = "$value";
    print(newkey+":::"+newvalue);
  });

  /*解答
  name:::lipin
  age:::27
   */


}