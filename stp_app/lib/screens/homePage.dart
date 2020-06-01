import 'package:flutter/material.dart';
import '../screens/StudentsPage.dart';
import '../screens/ProfessorsPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("Main Page"),
          centerTitle: true,
          backgroundColor: Colors.blue[500],
        ),
        
        body: Center(
       
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => StudentsPage())),
                  color: Colors.red,
                  hoverColor: Colors.blue,
                  child: Text(
                    "Students Page",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RaisedButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ProfessorsPage())),
                    color: Colors.purple,
                    child: Text("Professors Page",
                        style: TextStyle(color: Colors.white))),
              ]),
        ));
  }
}
