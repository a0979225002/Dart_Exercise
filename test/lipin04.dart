void main(){

  int a = 10;
  int b = 3;

  print(a+b);// 13
  print(a-b);// 7
  print(a*b);// 30
  print(a/b);// 3.3333333333333335
  print(a%b);// 1  取餘數
  print(a~/b);// 3 取整數

//  int AB = 10/3; 報錯 因為有餘數,這裏注意:有餘數將無法用int宣告
    int AB = 10~/3; //3 須改寫成這樣 取整數
  //或是用var宣告
    var VarAB = 10/3; //3.3333333333333335

//關係運算符-------------------------------------

  // == , !=  , > , < , >= , <=
  //跟java一樣,這裏就不演飾

//邏輯運算符-------------------------------------

  // ! , && , ||
  //跟java一樣,這裏就不演飾

//新東西 賦值運算-------------------------------------

  //??=
  //如果一開始宣告為空的話將會賦與新值,反之不為空的話,將不更新

//例子1
  int  aa = 10;//一開始已經賦值了
  aa ??= 20;

  print(aa);//結果還是10

//------------------------------------

//例子2
//  String bb = null;
//  int bb = null;
  int bb; //三種結果都可以被更改為100,String類型,賦值請改成"100";
  bb ??= 100;

  print(bb);//100

  //感覺還挺好用的,拿取陣列判斷空值時要改值時很方便


//條件表達式------------------------------------

  bool flag = true;

  //三目運算
  //這裡比較特別跟java有點差別可未給值前,就賦予布林值判斷
  int aaa = flag?111:222;

  int bbb= 333;

  bbb == 333 ?bbb=222:bbb=333;

//  if(bbb == 111){
//    bbb = 555;
//  }

  print(aaa);//111
  print(bbb);//222

// ?? 運算符--------------------------------------
  //判斷是否空值,如果??左邊非空值,就給予左邊,反之則右邊
  int aa01 = 100;
  int bb01 = aa01 ?? 1000;
  print(bb01); //100

  //空值
  int aa02;
  int bb02 = aa02 ?? 500;
  print(bb02); //500

}