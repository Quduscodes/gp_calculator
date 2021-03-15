import 'package:flutter/material.dart';

class Titles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                  flex: 3,
                  child: Text(
                    'Course',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
              SizedBox(width: 30.0,),
              Expanded(
                  flex: 2,
                  child: Text(
                    'Unit',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )),
              SizedBox(width: 20.0),
              Expanded(
                  flex: 4,
                  child: Text(
                    'Credit Point',
                    style: TextStyle(fontSize: 20.0),
                  )),
            ],
          ),
          SizedBox(height: 15.0,),
          Divider(height: 10.0, color: Colors.grey[500],)
        ],
      ),
    );
  }
}
