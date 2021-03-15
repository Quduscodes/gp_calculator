import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {

  final _units = [1, 2, 3, 4, 5];
  final courseCode;
  final unit;
  final scorePoint;
  final Function unitSetter;
  final Function scorePointSetter;
  final Function courseCodeSetter;
  final int i = 5;

  CourseTile(
      {this.courseCodeSetter,
      this.scorePoint,
      this.courseCode,
      this.unit,
      this.scorePointSetter,
      this.unitSetter});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Course Code',
                  hintText: courseCode,
                ),
                onChanged: courseCodeSetter,
              ),
            ),
            SizedBox(width: 30.0),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButton<int>(
                    items: _units.map((int dropDownStringItem) {
                      return DropdownMenuItem<int>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem.toString()));
                    }).toList(),
                    onChanged: unitSetter,
                    value: 5),
              ),
            ),
            SizedBox(width: 20.0),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: DropdownButton<int>(
                    items: _units.map((int dropDownStringItem) {
                      return DropdownMenuItem<int>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem.toString()));
                    }).toList(),
                    onChanged: scorePointSetter,
                    value: 5),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
