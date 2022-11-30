import 'dart:async';
import 'package:app/app_screen/bottom_bar.dart';
import 'package:app/app_screen/detail_page.dart';
import 'package:app/app_screen/drawer.dart';
import 'package:app/app_screen/form.dart';
import 'package:app/app_screen/navigation.dart';
import 'package:app/app_screen/pages.dart';
import 'package:app/app_screen/splash_screen.dart';
import 'package:app/app_screen/table_screen.dart';
import 'package:app/code/api_call.dart';
import 'package:app/code/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(new HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "Strix Test", home: MyApi());
  }
}
