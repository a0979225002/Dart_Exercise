///drat 並無屬性修飾符 public,private
///dart 預設修飾符 為public
class Animal{
  ///如要私有化private,在宣告名前面加入 _
  String _dog = "小狗";


  void dogs(String dog){

    this._dog = dog;

  }
}
///getter setter

class  Animail02{

  String _birdie;

  String _dog;

  String _pig;

  String get birdie => _birdie;

  set birdie(String value) {
    _birdie = value;
  }

  String get dog => _dog;

  set dog(String value) {
    _dog = value;
  }

  String get pig => _pig;

  set pig(String value) {
    _pig = value;
  }

  @override
  String toString() {
    return 'Animail02{_birdie: $_birdie, _dog: $_dog, _pig: $_pig}';
  }
}

void main(){

  Animal animal = new Animal();

  print(animal._dog);// 小狗

  Animail02 animal02 = new Animail02();

  animal02.dog = "柴犬";// setter附值
  animal02.pig = "種豬";
  animal02.birdie = "麻雀";

  animal02.dog;// getter拿取

  print(animal02.toString()); //Animail02{_birdie: 麻雀, _dog: 柴犬, _pig: 種豬}



}