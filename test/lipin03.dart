void main(){

//  數字宣告類型-----------------------------------
  int a = 100;

  double b = 3.14;
  var bb = 3.14;

  b = 3;

  print(b); //結果: 3.0

  var AB = b+a;

  print(AB);//結果: 103.0

//  字串宣告類型-----------------------------------
  String c = "我是lipin";

//布林-----------------------------------
  bool flag = true;

  var flag02 = false;

//判斷句-----------------------------------

  if(flag){
    print("真");
  }else{
    print("假");
  }
//------------------------------------------------
  int aa = 10;
  var aaa = 10;

  double b01 = 3.14;
  var bb02 = 3.14;
//-----------------------------------
  bb02 = 10;
  b01 = 10;

  if(aa==aaa){ //數字int類型是否等於var類型
    print("數字真"); //答案是等於
  }else{
    print("數字假");
  }

  if(aa==b01){ //數字int類型是否等於double類型
    print("數字真"); //答案是等於
  }else{
    print("數字假");
  }
//陣列------------------------------------------------

  var l1 = ["aaa","bbb","ccc"];

  print(l1); //[aaa, bbb, ccc]

  print(l1.length); //3


//-----------------------------------
  List l2 = new List();
//  var l2 = new List(); 兩種都可用

  l2.add("aaa");
  l2.add("bbb");
  l2.add("ccc");

  print(l2);//[aaa, bbb, ccc]

//list 指定類型-----------------------------------
  List<int> l3 = new List();
//  l3.add("123");報錯
  l3.add(123);


//Maps 類型-----------------------------------  

  var person = {
    "name":"張三",
    "age":20,
    "word":["IT工程師","外賣員"]
  };
  print(person);//{name: 張三, age: 20}
  print(person["name"]);//張三
  print(person["word"]);//[IT工程師, 外賣員]

//Maps 第二種定義方式-----------------------------------

  var p = new Map();
  p["name"] = "王武";
  p["age"] = 25;
  p["word"] = ["送貨員",123];

  print(p); //{name: 王武, age: 25, word: [送貨員, 123]}
  print(p["name"]); //王武

// is 判斷類型-----------------------------------

  String str = "String類型";


  if(str is String){
    print("我是String");//他是一個String類型
  }else if(str is int){
    print("我是int");
  }

  var dob01 = 3.14;
  
  if(dob01 is int){
    print("我是int");
  }else if(dob01 is double){
    print("我是double");//他是double類型
  }



}