import 'dart:async';
import 'package:app/app_screen/accord_screen.dart';
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
import 'package:getwidget/getwidget.dart';

void main() {
  runApp(new HomeScreen());
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "Strix Test", home: MyForm());
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var _MyFormKey = GlobalKey<FormState>();
  var _password = TextEditingController();
  var _confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Strix")),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Form(
          key: _MyFormKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please Enter Your Name";
                    }
                    if (value != null && value.length < 3) {
                      return "Enter More Than 3 Characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text("Name"),
                      hintText: "Your Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please Enter Your Mobile Number";
                    }
                    if (value != null && value.length < 10) {
                      return "Enter More Than 10 Characters";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      label: Text("Mobile Number"),
                      hintText: "+91 ************",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _password,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please Enter Your Password";
                    }
                    if (value != null && value.length < 6) {
                      return "Enter More Than 6 Characters";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Password"),
                      hintText: "************",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  controller: _confirmPassword,
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return "Please Enter Your Password";
                    }
                    if (value != null && value.length < 6) {
                      return "Enter More Than 6 Characters";
                    }
                    if (value != _password.value.text) {
                      return "Password Does Not Match";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      label: Text("Confirm Password"),
                      hintText: "************",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          _MyFormKey.currentState?.validate();
        },
      ),
    );
  }
}
