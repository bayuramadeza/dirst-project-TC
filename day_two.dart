import 'person.dart';
import 'student.dart';
void main() {
 
  Student student = new Student(name: 'Bayu', gender: 'L/W', dob: DateTime(1995, 5, 14), idFaculty: '15', idMajor: '1', year: 2016)  ;
  Student student2 = new Student(name: 'Erlanda', gender: 'L', dob: DateTime(2000, 8, 24), idFaculty: '23', idMajor: '2', year: 2018)  ;

  // print("old name : ${student.showName()}");
  // print(student.generateIdStudent());
  // print(student2.generateIdStudent());
  
  Person person = new Person(name: 'Bayu', age: 24);
  Person person2 = new Person(name: 'Budi', age: 24);
  Person person3 = new Person(name: 'Ayu', age: 24);
  Person person4 = new Person(name: 'Siska', age: 24);
  Person person5 = new Person(name: 'Andini', age: 24);
  List<Person> mobileClass = [];
  mobileClass.add(person);
  mobileClass.add(person2);
  mobileClass.add(person3);
  mobileClass.add(person4);
  mobileClass.add(person5);
  mobileClass.removeLast();
  print(mobileClass.length);
  mobileClass.forEach((person) { print(person.name);});



  // print(student.longStudy());
  // print(student2.longStudy());

  // student.loopExample();
}