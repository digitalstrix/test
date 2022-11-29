import 'package:app/app_screen/table_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Strix Test",
        home: Scaffold(
          appBar: AppBar(title: Text("Strix Test")),
          body: MyTable(),
        ));
  }
}
