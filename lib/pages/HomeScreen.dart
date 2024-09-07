import 'package:flutter/material.dart';
import '../components/StudentForm.dart';
import '../models/DataList.dart';
import '../models/Student.dart';
import '../screens/StudentListScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  List<Student> _students = [];

  final List<DataList> list = [
    DataList(id: 'g1', title: 'GridView1'),
    DataList(id: 'g2', title: 'GridView2'),
    DataList(id: 'g3', title: 'GridView3'),
    DataList(id: 'g4', title: 'GridView4'),
    DataList(id: 'g5', title: 'GridView5'),
    DataList(id: 'g6', title: 'GridView6'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _addStudent(
      String firstName, String lastName, String rollNo, String phoneNo) {
    final newStudent = Student(
      firstName: firstName,
      lastName: lastName,
      rollNo: rollNo,
      phoneNo: phoneNo,
    );

    setState(() {
      _students.add(newStudent);
    });

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StudentListScreen(students: _students),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('assignment que2'),
      ),
      body: _selectedIndex == 0
          ? StudentFormScreen(onSubmit: _addStudent)
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final item = list[index];
                return Card(
                  elevation: 5,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'ID : ${item.id}',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          item.title,
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Student',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
