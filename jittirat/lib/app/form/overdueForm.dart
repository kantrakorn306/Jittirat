import 'package:flutter/material.dart';

class overdueForm extends StatefulWidget {
  @override
  _overdueFormState createState() => _overdueFormState();
}

class _overdueFormState extends State<overdueForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('A101'),
      ),
      body: new Container(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("นางสาวเรียนดี จิตดี"),
              Text("081-021-0122"),
              Text("Jitdee"),
              Text("ค่าไฟ"),
              Text("ค่าที่พักห้องพัดลม"),
              Text("ค่าน้ำ"),
              Text("ค่าเช่าตู้เย็น"),
              Text("ค้างค่าชำระทั้งหมด 3000 บาท"),
            ],
          ),
        ),
      ),
    );
  }
}
