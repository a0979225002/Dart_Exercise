///.. 級聯操作

class Private{
  String _name;
  int _age;
  String _sex;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get sex => _sex;

  set sex(String value) {
    _sex = value;
  }

  @override
  String toString() {
    print('Private{_name: $_name, _age: $_age, _sex: $_sex}');
    return 'Private{_name: $_name, _age: $_age, _sex: $_sex}';
  }

}

void main(){
  //一般寫法
  
//  Private private = new Private();
//  private01.name = "蕭立品";
//  private01.age = 27;
//  private01.sex = "男";
//
//  private01.toString();

  Private private = new Private();

  //級聯操作
  private..name = "蕭立品"
          ..age = 27
          ..sex = "男"
          ..toString();

  //Private{_name: 蕭立品, _age: 27, _sex: 男}


}