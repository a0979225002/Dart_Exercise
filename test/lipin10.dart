  main(){
    ///帶參數方法

    int sumNun(int n){
      int sum = 0;
      for(int i = 1; i<=n ; i++ ){
        sum +=i;
      }
      return sum;
    }

    int newSum =  sumNun(5);

    int newSum02 = sumNun(100);

    print(newSum);//15

    print(newSum02);//5050


    String userName(String name, int age){
      ///這裡比較特殊,在這裡因為回傳值需要String
      //return name+"----"+age;//age為int 這裏不給return 報錯

      //改寫
      return name+"-----"+"$age";
    }

    String newUser = userName("蕭立品", 27);
    print(newUser);//蕭立品-----27

  ///注意新東西：可不帶參數寫法參數
    String usernName02(String name , [int age]){

      if(age == null){
        return name+"----"+"年齡保密";
      }
      return name+"-----"+"$age";
    }
    //這裡我只給一個參數
    String newUser02 = usernName02("優衣");
    print(newUser02);//優衣----年齡保密

   ///帶入默認參數
    String usernName03(String name , [String sex = "女",int age]){

      if(age == null){
        return name+"----"+"年齡保密"+"----性別:"+sex;
      }
      return name+"-----"+"$age"+"----性別:"+sex;
    }
    //這裡我一樣只給一個參數
    String newUser03 = usernName03("黑貓");
    print(newUser03);//黑貓----年齡保密----性別:女

    ///命名參數
    String usernName04(String name , {String sex = "女",int age}){

      if(age == null){
        return name+"----"+"年齡保密"+"----性別:"+sex;
      }
      return name+"-----"+"$age"+"----性別:"+sex;
    }
    ///注意這裡參數寫法,跟php一樣
    String newUser04 = usernName04("渣渣",sex: "男",age: 60);
    print(newUser04);//渣渣-----60----性別:男

    ///這裡算新東西,java沒法這樣做,跟js的匿名寫法效果一樣
    ///1.在這裡 我給予第一個方法有參數,讓他將該參數的值 給予外部的num
    ///2.然後在寫另一個方法,讓他帶入兩個參數,第一個為methed這裏放入第一個方法 ,第二個參數是為了給予第一個方法參數
    //方法
    int num = 0;
    void parameter(int newnum){
      num += newnum;
    }

    //方法
    int newpar(void method(int newnum),int newnum02){

      method(newnum02);//這時呼叫的是上面那個parameter方法,在下方我給100的值
      //此時外部的num等於100
      num +=100;//然後我在讓他加100
      return num;
    }
    ///注意：如果參數是方法物件,你無法帶入該方法的參數,需像我這樣寫
    int newnum = newpar(parameter,100);

    print(newnum);//200

  }