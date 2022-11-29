import 'package:app/app_screen/bottom_bar.dart';
import 'package:app/app_screen/detail_page.dart';
import 'package:app/app_screen/form.dart';
import 'package:app/app_screen/navigation.dart';
import 'package:app/app_screen/pages.dart';
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
      home: MyNavigation(),
    );
  }
}
