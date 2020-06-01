import 'package:flutter/material.dart';
import 'package:stp_app/screens/ProfessorsInfo.dart';
import '../Models/ProfessorList.dart';

class ProfessorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Professors Page"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount: professors.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(professors[index].img),
                
              ),
              title: Text(professors[index].name),
              subtitle: Text(professors[index].email),
              trailing: Icon(Icons.exit_to_app),
              onTap: () => Navigator.push(context, 
              MaterialPageRoute(builder: (context) => ProfessorsInfoPage(professorInfo: professors[index]))),
            );
          }),
    );
  }
}
