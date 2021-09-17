class Student {
  final String name;
  String gender;
  DateTime dob;
  String idFaculty;
  String idMajor;
  int year;
  
  Student({
    required this.name,
    required this.gender,
    required this.dob,
    required this.idFaculty,
    required this.idMajor,
    required this.year,
  });

  showName(){
    return this.name;
  }

  longStudy(){
    int long = DateTime.now().year - this.year;
    if(long>4){
      return 'You must complete your study';
    }
    return 'You are stil studying';
  }

  loopExample(){
    for(int i = 0; i<10; i++){
      print("Current index : $i");
    }
    List<String> products = ['Comuter', 'Mouse', 'Keyboard'];
    for (var product in products) {
      print(product);
    }
    int index = 0;
    do {
      print(products[index]);
      index++;
    } while (index<products.length);
  }

  generateIdGender(){
    return this.gender=='L'? '1' : gender=='W'? '2' : throw 'You must input a correct gender'; 
  }

  generateIdMajor(int id){
    String output = id<10? '0$id' : id.toString();
    return output;
  }

  generateIdStudent(){
    try{
      return 'NIM saya adalah ${this.year.toString().substring(2)}$idFaculty${generateIdMajor(int.parse(idMajor))}${generateIdGender()}';
    } catch (e){
      return e;
    }
  }
}
