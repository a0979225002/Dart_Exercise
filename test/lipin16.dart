
///繼承 傳建構參數

class Person{
  String name;
  int age;
  Person(String name , int age):name = "張三", age = 50{
   this.name = name;
   this.age = age;
   print("01 $name");//蕭立品
  }
}

class NewPeople extends Person{
  ///注意 如果繼承的class有建構式,需要super父類的建構式不然會報錯
  /// ' :參數 ' 這個寫法是預設寫法 (下方範例), 在尚為給參數時先給予 預設參數,如果非繼承時一樣能以 :來宣告

  String sex;

  NewPeople(String name ,int age,String sex):super( name  ,age ){
   this.sex = sex;
   this.name = name;
   this.age = age;
  }
  void printInto(){

    print("姓名:$name--年齡:$age--性別:$sex");
  }
}
///補充:初始化列表
class Newgame  {

  String game01;
  String game02;
  ///注意 ':'右邊先執行,然後在執行左邊的(),如果有參數,將會被覆蓋
  Newgame():game01= "隻狼", game02 = "尼爾" {

   this.game01 = game01;
   this.game02 = game02;

    print("$game01 ----- $game02");

    //這樣當 new出Newgame時 將會自動給予 這兩個game01,game02值
  }
}

void main(){

  Person person = new Person("蕭立品", 27);

  print(person.name);//蕭立品

  NewPeople newPeople = new NewPeople("優衣", 18,"女");
  print(newPeople.name);//優衣

  newPeople.printInto();//姓名:優衣--年齡:18--性別:女


  Newgame newgame = new Newgame();//隻狼 ----- 尼爾


}