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
      home: SimpleForm(),
    );
  }
}

class SimpleForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SimpleFormState();
  }
}

class _SimpleFormState extends State<SimpleForm> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Strix Test")),
      body: Container(
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String username) {
                setState(() {
                  name = username;
                });
              },
            ),
            Text(
              "Name is $name",
              textDirection: TextDirection.ltr,
            )
          ],
        ),
      ),
    );
  }
}
