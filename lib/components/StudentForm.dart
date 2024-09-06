import 'package:flutter/material.dart';
import 'package:que2/pages/StudentList.dart';

class StudentFormScreen extends StatefulWidget {
  @override
  _StudentFormScreenState createState() => _StudentFormScreenState();
}

class _StudentFormScreenState extends State<StudentFormScreen> {
  final _formKey = GlobalKey<FormState>();
  String _firstName = '';
  String _lastName = '';
  String _rollNo = '';
  String _phoneNo = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StudentListScreen(
            firstName: _firstName,
            lastName: _lastName,
            rollNo: _rollNo,
            phoneNo: _phoneNo,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter first name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _firstName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter last name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _lastName = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Roll No.'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter Roll No.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _rollNo = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone No.'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'please enter Phone No.';
                  }
                  return null;
                },
                onSaved: (value) {
                  _phoneNo = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
