import 'package:app/app_screen/detail_page.dart';
import 'package:flutter/material.dart';

class MyNavigation extends StatefulWidget {
  const MyNavigation({super.key});

  @override
  State<MyNavigation> createState() => _MyNavigationState();
}

class _MyNavigationState extends State<MyNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Strix Digital')),
        body: Center(
            child: ElevatedButton(
          child: Text('Click Here'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyPageDetails()));
          },
        )));
  }
}
