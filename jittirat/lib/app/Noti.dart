import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Notification")),
      body: new Center(
        child: new Text("Notification"),
      ),
    );
  }
}
