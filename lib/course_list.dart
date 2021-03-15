import 'package:flutter/material.dart';
import 'Course.dart';
import 'course_tile.dart';

class CourseList extends StatefulWidget {
  List<Course> courses = [
    Course(
      courseCode: 'MAT111',
      unit: 5,
      scorePoint: 5,
    ),
    Course(
      courseCode: 'MAT111',
      unit: 5,
      scorePoint: 5,
    )
  ];
  void addCourse() {
    courses.add(Course(
      courseCode: 'MAT111',
      unit: 5,
      scorePoint: 5,
    ));
  }

  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return CourseTile(
              courseCode: widget.courses[index].courseCode,
              scorePoint: widget.courses[index].scorePoint,
              unit: widget.courses[index].unit,
              courseCodeSetter: (input) {
                setState(() {
                  widget.courses[index].courseCode = input;
                });
              },
              unitSetter: (int newUnitSelected) {
                setState(() {
                  widget.courses[index].unit = newUnitSelected;
                });
              },
              scorePointSetter: (int newScorePointSelected) {
                setState(() {
                  widget.courses[index].scorePoint = newScorePointSelected;
                });
              },
            );
          },
          itemCount: widget.courses.length,
        ),
      ),
    );
  }
}
