import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Color.fromRGBO(156, 39, 176, 1),
        child: Container(
          margin: EdgeInsets.all(25),
          child: Table(
            border: TableBorder.all(),
            children: [
              TableRow(children: [
                Text(
                  "First Name",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Last Name",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )
              ]),
              TableRow(children: [
                Text(
                  "Aadarsh",
                  style: TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Gupta",
                  style: TextStyle(fontSize: 25.0),
                  textAlign: TextAlign.center,
                )
              ]),
            ],
          ),
        ));
  }
}
