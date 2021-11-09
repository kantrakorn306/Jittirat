import 'package:flutter/material.dart';

class payRentForm extends StatefulWidget {
  @override
  _payRentFormState createState() => _payRentFormState();
}

Widget showImage() {
  return Container(
    height: 210.0,
    width: 230.0,
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('images/bill.PNG'),
        ),
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(width: 2, color: Colors.white)),
  );
}

Widget accept() {
  return Container(
    alignment: Alignment(0.5, 0),
    child: new ElevatedButton(
        onPressed: () {},
        child: new Text("ยอมรับ"),
        style: ElevatedButton.styleFrom(
            primary: Colors.pinkAccent,
            side: BorderSide(width: 1, color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 275,
                  color: Colors.white,
                  child: Column(
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
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            showImage(),
            Padding(padding: EdgeInsets.only(top: 20)),
            accept(),
          ],
        ),
      ),
    );
  }
}
