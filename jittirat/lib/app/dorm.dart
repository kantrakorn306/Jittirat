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

  SizedBox overdue() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(onPressed: () {}, child: new Text("ค้างชำระ")),
    );
  }

  SizedBox overdue2() {
    return SizedBox(
      height: 200,
      width: 200,
      child:
          new ElevatedButton(onPressed: () {}, child: new Text("ห้องที่ว่าง")),
    );
  }

  SizedBox overdue3() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {}, child: new Text("เครื่องใช้ไฟฟ้า")),
    );
  }

  SizedBox overdue4() {
    return SizedBox(
      height: 200,
      width: 200,
      child:
          new ElevatedButton(onPressed: () {}, child: new Text("ห้องทั้งหมด")),
    );
  }
}
