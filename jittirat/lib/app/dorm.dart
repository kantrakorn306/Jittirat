import 'package:flutter/material.dart';
import 'package:jittirat/app/options/rooms.dart';

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
                emptyRooms(),
              ],
            ),
            Column(
              children: [
                electronic(),
                Padding(padding: EdgeInsets.all(5)),
                allRooms(),
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

  SizedBox emptyRooms() {
    return SizedBox(
      height: 200,
      width: 200,
      child:
          new ElevatedButton(onPressed: () {}, child: new Text("ห้องที่ว่าง")),
    );
  }

  SizedBox electronic() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {}, child: new Text("เครื่องใช้ไฟฟ้า")),
    );
  }

  SizedBox allRooms() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {
            MaterialPageRoute materialPageRoute =
                MaterialPageRoute(builder: (BuildContext context) => Rooms());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("ห้องทั้งหมด")),
    );
  }
}
