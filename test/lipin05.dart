

void main(){
// 類型轉換
  //int 轉換
  String str = "123";

  int StringToint = int.parse(str);

  print(StringToint is int);//true

  //double 轉換
  String str01 = "123.5";

  double StringTodouble = double.parse(str01);

  print(StringTodouble is double); //true

//如果是空值或空欄位,賦予0------------------------------------------
  String str02 = " ";

  //如果是空字串將它變成0
  ///注意這裏我是能確保他是空字串,或空欄位字串 如果宣告的值是null將一樣會報錯
  ///這裡跟java一樣寫法
  double nullTodouble = double.parse(str02.trim().isEmpty?str02 = "0":str02);

  print(nullTodouble is double); //true

  print(nullTodouble);//0.0

//或是使用try------------------------------------------
  try{
    String str03 = "";

    int nullToint = int.parse(str03 ?? 0);
    print(nullToint);//無

  }catch(err){
    print(err.toString());//FormatException: Invalid number (at character 1)
    print(0); //0
  }

//數字轉String------------------------------------------

  int myNum = 100;

  String intToString = myNum.toString();

  print(intToString is String);//true


//double 轉 int------------------------------------------
 double dob = 100.3;

 int myint = dob.round();

 print(myint); //100

 print(myint is int);//true

//list-----------------------------------------

  List list = new List();

  list = [{
    "title":"Dart"
  },
  {
    "title":"Java"
  },
  {
    "title":"PHP"
  }];
//foreach-----------------------------------------
  for( var i in list){
    print(i);
  // 結果
  //    {title: Dart}
  //    {title: Java}
  //    {title: PHP}
  }
//for-----------------------------------------
  for(int i = 0; i<list.length;i++ ){

    print(list[i]["title"]);
  // 結果
  //    Dart
  //    Java
  //    PHP
  }
// 二維陣列-----------------------------------------

  List list01 = [{
    "cate":"台灣",
    "news":[
      {"title":"Dart"},
      {"title":"Java"},
      {"title":"PHP"},
    ]
  },{
    "cate":"國外",
    "news":[
      {"title":"flutter"},
      {"title":"JavaScripts"},
      {"title":"PHP"},
    ]
  },{
    "cate":"中國",
    "news":[
      {"title":"Python"},
      {"title":"Java"},
      {"title":"HTML"},
    ]
  }];

  for(int i = 0; i<list01.length;i++){
    print(list01[i]["cate"]);

    //注意這裡的length編譯器並不會提示,目前不知為啥
    for(int j = 0; j < list01[i]["news"].length;j++){
      //二維陣列寫法,需在二維的地方也加入index來解析,請看下方第三個[]
      print(list01[i]["news"][j]["title"]);
    }
    print("-----------------");
  }

//解答:
//  台灣
//  Dart
//  Java
//  PHP
//  -----------------
//  國外
//  flutter
//  JavaScripts
//  PHP
//  -----------------
//  中國
//  Python
//  Java
//  HTML
//  -----------------


}