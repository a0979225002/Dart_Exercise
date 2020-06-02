
import 'package:http/http.dart' as http;

///使用別人的api
void main() async{


  var url = 'https://www.gamer.com.tw/';
  var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
  print('Response status: ${response.statusCode}');
//  print('Response body: ${response.body}');

  print(await http.read('https://www.gamer.com.tw/'));
  
}