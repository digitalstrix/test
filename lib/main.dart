import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Strix Test",
    home: Scaffold(
      appBar: AppBar(title: Text("Strix Test")),
      body: Material(
        color: Colors.purple,
        child: Center(
            child: Text(
          "Aadarsh",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.white, fontSize: 50.8),
        )),
      ),
    ),
  ));
}
