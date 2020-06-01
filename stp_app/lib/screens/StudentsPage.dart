

import 'package:flutter/material.dart';
import 'package:stp_app/screens/StudentsInfo.dart';
import '../Models/StudentList.dart';

class StudentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Page"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
              backgroundImage: AssetImage(students[index].img) ,
          ),   
          // leading: FlutterLogo(),
            title: Text(students[index].name),
            subtitle: Text(students[index].email),
            trailing: Icon(Icons.exit_to_app),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        StudentsInfoPage(studentInfo: students[index]))),
          );
        },
      ),
    );
  }
}
