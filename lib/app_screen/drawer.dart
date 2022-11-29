import 'package:app/code/drawer.dart';
import "package:flutter/material.dart";

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerCode(),
      appBar: AppBar(title: Text('Strix Digital')),
      body: Center(child: Text('Home Page')),
    );
  }
}
