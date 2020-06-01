import 'package:flutter/material.dart';
import 'package:stp_app/Models/Student.dart';

class StudentsInfoPage extends StatelessWidget {
  final Student studentInfo;
  StudentsInfoPage({Key key, @required this.studentInfo}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(studentInfo.name + " Info"),
          centerTitle: true,
        ),
        body: Center(
          child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(studentInfo.img),
                radius: 50,
              ),
            title: Text("Name: "+studentInfo.name+"\nEmail: "+ studentInfo.email),
            subtitle: Text("GPA: "+ studentInfo.gpa.toString()),
           
          ),

        )    
    );
  }
}