import 'package:flutter/material.dart';
import '../models/Student.dart'; 

class StudentListScreen extends StatelessWidget {
  final List<Student> students;

  StudentListScreen({required this.students});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student List'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          final student = students[index];
          return ListTile(
            title: Text('${student.firstName} ${student.lastName}'),
            subtitle:
                Text('Roll No: ${student.rollNo}, Phone: ${student.phoneNo}'),
          );
        },
      ),
    );
  }
}
