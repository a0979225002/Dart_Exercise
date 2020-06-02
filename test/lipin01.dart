
//main無返回值
void main(){
//dart 可透過var宣告,來達到不宣告類型,也能自動判斷類型

//  1.可通過多種方式宣告
  var str01 = "你好01";//跟javaScripts宣告方式一樣
  String str02 = "你好02";//也可使用java方式宣告
  print(str01+"::"+str02);

  //例子01
  var int03 = 10;
  int int04 = 20;

  int int05 = int03+int04;

  print(int05);

  //例子02
  var str = "";

//  str = 12345;

  //在這裡將會報錯,當賦予值的var將無法隨意更改類型

}


