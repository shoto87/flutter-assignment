import 'package:flutter/material.dart';
import 'package:que2/components/StudentForm.dart';

class StudentListScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String rollNo;
  final String phoneNo;

  StudentListScreen({
    required this.firstName,
    required this.lastName,
    required this.rollNo,
    required this.phoneNo,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('First Name : $firstName', style: TextStyle(fontSize: 18)),
            Text('Last Name : $lastName', style: TextStyle(fontSize: 18)),
            Text('Roll No. : $rollNo', style: TextStyle(fontSize: 18)),
            Text('Phone No. : $phoneNo', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
