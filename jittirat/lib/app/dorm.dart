import 'package:flutter/material.dart';

class Dorm extends StatefulWidget {
  @override
  _DormState createState() => _DormState();
}

class _DormState extends State<Dorm> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dormitory")),
      body: new Center(
        child: new Text("Dormitory"),
      ),
    );
  }
}
