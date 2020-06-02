import 'dart:convert';
import 'dart:io';

///使用async 和 await 非同步執行
///注意他不是執行緒,他能做到單行緒內非同步
///使用await關鍵字達到非同步作用, 需在使用的方法名右邊也加入async 不然會報錯

void main() async{
   //呼叫 io庫
   var result = await getDataHttps();

   print(result);//在這會打印出:網頁原始碼
}

//抓取巴哈姆特網頁超文字
getDataHttps() async{
   HttpClient httpClient = new HttpClient();
   //https://www.gamer.com.tw/
   Uri uri = new Uri.https('gamer.com.tw','');

   var request =  await httpClient.getUrl(uri);

   var response = await request.close();

   return await response.transform(utf8.decoder).join();

}