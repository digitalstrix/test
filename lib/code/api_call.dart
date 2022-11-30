import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MyApi extends StatefulWidget {
  const MyApi({super.key});
  @override
  State<MyApi> createState() => _MyApiState();
}

class _MyApiState extends State<MyApi> {
  late String getData = "";
  List getList = <dynamic>[];
  Future fetchData() async {
    http.Response response;
    String url = "https://reqres.in/api/users/2";
    response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        getList = json.decode(response.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Strix Digital')),
        body: ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Card(
                        child: Container(
                          child: Text(getList.toString()),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
