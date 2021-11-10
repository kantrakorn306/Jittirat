import 'package:flutter/material.dart';

class overdueForm extends StatefulWidget {
  @override
  _overdueFormState createState() => _overdueFormState();
}

class _overdueFormState extends State<overdueForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A101'),
      ),
      backgroundColor: Colors.pink[200],
      body: Center(
        child: Container(
          width: 300,
          height: 600,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(width: 1, color: Colors.black),
              color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("นางสาวเรียนดี จิตดี"),
                          Text("081-021-0122"),
                          Text("Line:Jitdee"),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("ค่าไฟ"),
                              Text("ค่าที่พักห้องพัดลม"),
                              Text("ค่าน้ำ"),
                              Text("ค่าเช่าตู้เย็น"),
                            ],
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(left: 120)),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("600 บาท"),
                              Text("2200 บาท"),
                              Text("50 บาท"),
                              Text("200 บาท"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Text("ค้างค่าชำระทั้งหมด 3000 บาท"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
