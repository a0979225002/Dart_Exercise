
class Phone{
  /// 注意dart 並無多載

  String aaa;
  int bbb;
  Phone(String aaa,[int bbb = 30000]){
    this.aaa = aaa;
    this.bbb = bbb;
    print(aaa);
    print("我是建構式");
  }
  //無法多個建構式
//  phone(String aaa){
//
//  }
  ///建構式簡寫,此串同等上面那串
//  Phone(this.aaa,this.bbb);

///取而代之的命名建構

  Phone.now( String aaa,int bbb){
    this.aaa = aaa;
    this.bbb = bbb;
  }

  void newAB(){

    print(aaa+"---價格:"+"$bbb");

  }
}
void main(){
    /// 注意dart 並無多載

  Phone phone = new Phone("蘋果手機");//蘋果手機
  phone.newAB();//蘋果手機---價格:30000

  //命名建構
  ///他並不會去執行建構式
  Phone phone02 = new Phone.now("三星", 25000);

  phone02.newAB();//三星---價格:25000


}