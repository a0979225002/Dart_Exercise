

    ///自定義方法

    void printInfo(){

      print("自定義方法");
    }

    String printUserInfo(){
      return "有返回值";
    }

    ///自定義類別

     class myclass{

      int a;

      void num(){

       a = 10;
      }

      int newNum(){
        int b = 20;
        num();
        b+=a;
        return b;
      }

    }

    ///同等java 中的main 在裡面才能實作或呼叫
    void main(){

      //print()為內置方法
      print("內置方法");

      printInfo();//印出:自定義方法

      //有返回值方法
      int getNumber(){
        var mynum = 123;
        return mynum;
      }

      var n =  getNumber();

      print(n);//印出:123

      print(printUserInfo());//印出: 有返回值

    ///內部方法使用

      int aaa(){

        int num(){

          return 100;

        }
        return  num()*2;
      }

      int newaa = aaa();
      print(newaa);//200

      
    ///自定義class

      myclass m = new myclass();

      print(m.newNum());//30



    }