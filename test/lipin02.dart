void main(){
  //常量變數
//  const,final
  const PI = "this is const";

//  PI = "not const"; 無法改值

  final PI2 = "this is final";

//  PI2 = "not final";  無法改值

  print(PI+"::"+PI2);


  //打印當前時間

  DateTime Date = new DateTime.now();

//  Date02 = new DateTime.now(); //報錯了 未宣告class

  //這裡比較神奇 使用常量連宣告都不用
  final Date03 = new DateTime.now();

  print("現在時間:"+Date03.toString());

//  const Date2 = new DateTime.now(); 報錯了

 //兩個常量差別 final:惰性初始化,編譯第一次使用前才初始化
//            const:編譯階段,就給予常量,所以宣告現在時間這邊會報錯

}