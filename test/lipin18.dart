
///Dart 新特性 Mixins
/// 重點:類似多個繼承特性
/// 重點:他不是繼承,只是擁有類似繼承的特性
///個人覺得超垃圾,根本無法維護
///1. 使用 Mixins 繼承的多個class內的方法名不要相同
/// 如果是無回傳的void方法的同名方法 呼叫時會被後面的class蓋過
///如果使用 有回傳的方法時,會判別 傳回的屬性是否相同,兩個同名方法,傳回屬性不同,在編譯期會報錯
//------------------------------------------------------------------------------
///2. 使用 Mixins 繼承的父類class 不能帶入建構式,無參建構都不行
///3. 使用 Mixins 繼承的父類class 該class不能有任何父類 不能extends
///4. 使用時機 extends 有參數 class 後方再用 with 來繼承多個 無參class
/// 使用方式 在 class 宣告名稱的後方 使用 'with' 來繼承其他class


class Person{
  String Sex;
  int money;
  //建構式
  Person(this.Sex, this.money);

  void printInto(){
    print("性別:$Sex--- 財產:$money");
}

}

class A{
  String name = "lipin";

  String persion(String name){
    this.name = name;
    return name;
  }
}
class B{
  int age = 27;

  int persion01(int age) {
    this.age = age;
    return age;
  }
}

class C extends Person with A,B{
  C(String Sex, int money) : super(Sex, money){

    print("$name--$age-----$Sex-----$money");
  }

}

void main(){

  C c = new C("女", 300000000);//lipin--27-----女-----300000000

  //呼叫class Ａ 方法
  print(c.persion("優衣"));//優衣
  //呼叫class B 方法
  print(c.persion01(18));//18
  //extends的Person 方法
  c.printInto();//性別:女--- 財產:300000000

}