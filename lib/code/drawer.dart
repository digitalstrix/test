import 'package:app/app_screen/detail_page.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class DrawerCode extends StatelessWidget {
  const DrawerCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
            color: Theme.of(context).primaryColor,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 10),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://yt3.ggpht.com/xL98dXzwCUrLNVwZJLkHVw5IftaMIao6CHLoRWhOYNUUCjw6w87sdfDoSVfx-eINpCFdl60PPQ=s176-c-k-c0x00ffffff-no-rj'))),
                ),
                Padding(
                    padding: EdgeInsets.only(bottom: 13),
                    child: Text(
                      "Aadarsh Gupta",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ))
              ],
            )),
        ListTile(
          title: Text(
            'Home',
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(Icons.home),
          onTap: null,
        ),
        ListTile(
          title: Text(
            'User',
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(Icons.person),
          onTap: null,
        ),
        ListTile(
          title: Text(
            'Settings',
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(Icons.settings),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyPageDetails()));
          },
        ),
        ListTile(
          title: Text(
            'Logout',
            style: TextStyle(fontSize: 17),
          ),
          leading: Icon(Icons.logout),
          onTap: null,
        ),
      ]),
    );
  }
}
