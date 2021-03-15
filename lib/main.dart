import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'course_list.dart';
import 'package:mygp_calculator/titles.dart';


void main() {
  runApp(MaterialApp(theme: ThemeData.dark(), home: CoursesScreen()));
}

class CoursesScreen extends StatefulWidget {
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {

  int i=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MY GP CALCULATOR'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
CourseList().addCourse();
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: <Widget>[
          Titles(),
          CourseList(),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: (){},
                child: Container(
                  height: 50.0,
                  width: 160.0,
                  color: Colors.white,
                  margin: EdgeInsets.all(20.0),
                  child: Center(
                    child: Text('CALCULATE', style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),),
                  ),
                ),
              ),
              SizedBox(width: 50.0,),
              Text('5.00', style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w900,
              ),),
            ],
          )
        ],
      ),
    );
  }
}
