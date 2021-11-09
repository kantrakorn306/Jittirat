import 'package:flutter/material.dart';

class payRentForm extends StatefulWidget {
  @override
  _payRentFormState createState() => _payRentFormState();
}

Widget showImage() {
  return Container(
    height: 200.0,
    width: 200.0,
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/qrcode.png'),
        ),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 2, color: Colors.white)),
  );
}

class _payRentFormState extends State<payRentForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('A101'),
      ),
      body: new Container(
        child: Column(
          children: [
            Card(
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
            showImage(),
            accept(),
          ],
        ),
      ),
    );
  }
}

accept() {
  return SizedBox(
    height: 50,
    width: 100,
    child: new ElevatedButton(onPressed: () {}, child: new Text("ยอมรับ")),
  );
}
