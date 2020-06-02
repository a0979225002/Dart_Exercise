abstract class A{

  void persion();

}
abstract class AA{

  String name();
}

abstract class B{

  void math01();

  void printInto(){
    print("抽象類實現");
  }
}

class C extends B implements A,AA{
  @override
  void math01() {
    // TODO: implement math01
  }

  @override
  void persion() {
    // TODO: implement persion
  }

  @override
  String name() {
    // TODO: implement name

    return "抽象類實作";
  }

}

void main(){

  C c = new C();

  c.printInto();//抽象類實現

  print(c.name());//抽象類實作

}