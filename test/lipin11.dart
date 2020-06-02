void main(){
  //匿名方法 跟js 一樣

///記住重點:他就是一個無名字的方法
  var aaa = (int a){

    return a+=100;
  };

  print(aaa(10));//110

  //自執行方法
  ///不用去呼叫他,他就會去執行
//  ((){}){}
  int bb = 10;

  ((int newbb){

    bb *= newbb;

  })(100);

  ///在這裡我並沒有去呼叫上面那個自執行方法,他就會自動去執行 ,讓我的b*100
  print(bb);//1000

  ///方法遞歸,自己呼叫自己
  ///另類的迴圈

  int cc = 10;

  int method(int num){

    cc *=num;

    if(num == 1){
      ///注意 如果沒有return 他將會變無窮回圈
      return cc;//遇到return 就會跳出
    }
    method(num-1);
  }
  method(5);
  print(cc);//1200
  ///講解: 一開始cc =10
  ///     然後執行method(5)
  ///     這時 cc = 10*5, 然後這時num不等於1 ,所以他又執行一次method(5-1)
  ///     此時cc = 50 , 然後 50 * 4
  ///     此串相當於 10 * 5 * 4 * 3 * 2 * 1 = 1200


  ///閉包--------------------------------

  //想保有全域變數特性,又不讓人隨意更改變數, js寫法相似

  num(){
    var a = 10;

    return(){
      a++;
      return a;
    };
  }

  var a = num();
  ///注意:這裏的a() ＝ 呼叫上面 num()方法內的 return(){}
  int newa = a();

  print(newa);//11

  newa = a();

  print(newa);//12

  newa = a();

  print(newa);//13


}