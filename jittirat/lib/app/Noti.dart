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
      body: new Container(
        margin: EdgeInsets.all(5),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                overdue(),
                Padding(padding: EdgeInsets.all(5)),
                overdue3(),
              ],
            ),
            Column(
              children: [
                overdue2(),
                Padding(padding: EdgeInsets.all(5)),
                overdue4(),
              ],
            )
          ],
        )),
      ),
    );
  }
}

SizedBox overdue() {
  return SizedBox(
    height: 200,
    width: 200,
    child: new ElevatedButton(onPressed: () {}, child: new Text("ชำระค่าเช่า")),
  );
}

SizedBox overdue2() {
  return SizedBox(
    height: 200,
    width: 200,
    child: new ElevatedButton(
        onPressed: () {}, child: new Text("แจ้งเช่าเครื่องใช้ไฟ้ฟ้า")),
  );
}

SizedBox overdue3() {
  return SizedBox(
    height: 200,
    width: 200,
    child:
        new ElevatedButton(onPressed: () {}, child: new Text("แจ้งของชำรุด")),
  );
}

SizedBox overdue4() {
  return SizedBox(
    height: 200,
    width: 200,
    child: new ElevatedButton(onPressed: () {}, child: new Text("อื่นๆ")),
  );
}
