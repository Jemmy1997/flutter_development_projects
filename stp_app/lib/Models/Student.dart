import 'package:stp_app/Models/Person.dart';

class Student extends Person{
  final double gpa;
  Student(String name, String email,String img, this.gpa ) : super(name, email, img);


}