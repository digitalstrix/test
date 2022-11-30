import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MyAccord extends StatelessWidget {
  const MyAccord({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strix Digital'),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: <Widget>[
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.remove),
                title: "Test",
                content:
                    "Alternatively, your editor might support pub getor flutter pub get. Check the docs for your editor to learn more.",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.remove),
                title: "Test",
                content:
                    "Alternatively, your editor might support pub getor flutter pub get. Check the docs for your editor to learn more.",
              ),
              GFAccordion(
                collapsedIcon: Icon(Icons.add),
                expandedIcon: Icon(Icons.remove),
                title: "Test",
                content:
                    "Alternatively, your editor might support pub getor flutter pub get. Check the docs for your editor to learn more.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
