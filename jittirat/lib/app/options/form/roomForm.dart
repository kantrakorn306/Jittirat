import 'package:flutter/material.dart';

class roomForm extends StatefulWidget {
  @override
  _roomFormState createState() => _roomFormState();
}

class _roomFormState extends State<roomForm> {
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
            children: <Widget>[nameForm(), phoneForm(), lineForm(), submit()],
          ),
        ),
      ),
    );
  }
}

nameForm() {
  return TextFormField(
      decoration: const InputDecoration(hintText: "ชื่อ-สกุล"));
}

phoneForm() {
  return TextFormField(
      decoration: const InputDecoration(hintText: "เบอร์โทรศัพท์"));
}

lineForm() {
  return TextFormField(decoration: const InputDecoration(hintText: "LINE"));
}

submit() {
  return SizedBox(
    height: 50,
    width: 80,
    child: new ElevatedButton(onPressed: () {}, child: new Text("ยืนยัน")),
  );
}
