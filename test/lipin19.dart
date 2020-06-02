
///泛型用法
///解決代碼重複問題
///如果該class,你想傳入 String 類型,也想傳入int 類型,不過你只想寫一串,該如何做到
class PrintClass<T>{
    List list = new List();

    void add(T data){
      this.list.add(data);
    }

    void printInfo(){

      print(list);
    }
}

void main(){
  ///如果該方法,你想傳入 String 類型,也想傳入int 類型,不過你只想寫一串,該如何做到


  T getDate<T>(T value){

    return value;
  }

  print(getDate("我想傳字串"));//我想傳字串

  print(getDate(12345));//12345

  print(getDate("拉拉") is String);//true

  ///如果該class,你想傳入 String 類型,也想傳入int 類型,不過你只想寫一串,該如何做到
  //只能傳 String 類型
  PrintClass printClass = new PrintClass<String>();

  printClass.add("我想傳String");
  printClass.printInfo();//[我想傳String]
//  printClass.add(123); 編譯時不會出錯,runtime時才會報錯

  //只能傳 數字類型
  PrintClass printClass02 = new PrintClass<num>();

  printClass02.add(123.5);
  printClass02.printInfo();//[123.5]

}