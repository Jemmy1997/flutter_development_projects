import 'package:flutter/material.dart';
import 'package:stp_app/Models/Professor.dart';

class ProfessorsInfoPage extends StatelessWidget {
  final Professor professorInfo;
  ProfessorsInfoPage({Key key, @required this.professorInfo}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(professorInfo.name + " Info"),
          centerTitle: true,
        ),
        body: Center(
          child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(professorInfo.img),
                radius: 40,
              ),
            title: Text("Name: "+professorInfo.name + "\nEmail: "+professorInfo.email),
            subtitle: Text( "Salary: " + professorInfo.salary.toString(), ),
           
          ),

        )    
    );
  }
}