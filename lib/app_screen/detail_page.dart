import 'package:flutter/material.dart';

class MyPageDetails extends StatelessWidget {
  const MyPageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Detail Page'),
            FloatingActionButton(
                child: Icon(Icons.back_hand),
                onPressed: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
