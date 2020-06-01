import 'package:stp_app/Models/Person.dart';

class Professor extends Person{
  double salary;
  Professor(String name, String email, String img,  this.salary) : super(name, email, img);
  
  
}