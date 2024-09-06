import 'package:flutter/material.dart';

class StudentFormScreen extends StatelessWidget {
  final void Function(String, String, String, String) onSubmit;

  StudentFormScreen({required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final _firstNameController = TextEditingController();
    final _lastNameController = TextEditingController();
    final _rollNoController = TextEditingController();
    final _phoneNoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Student Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _firstNameController,
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextField(
              controller: _lastNameController,
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
            TextField(
              controller: _rollNoController,
              decoration: InputDecoration(labelText: 'Roll No.'),
            ),
            TextField(
              controller: _phoneNoController,
              decoration: InputDecoration(labelText: 'Phone No.'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                onSubmit(
                  _firstNameController.text,
                  _lastNameController.text,
                  _rollNoController.text,
                  _phoneNoController.text,
                );
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
