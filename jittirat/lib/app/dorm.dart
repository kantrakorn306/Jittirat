import 'package:flutter/material.dart';
import 'package:Jittirat/app/optionsDorm/rooms.dart';
import 'package:Jittirat/app/optionsDorm/Empty.dart';
import 'package:Jittirat/app/optionsDorm/Electronic.dart';
import 'package:Jittirat/app/optionsDorm/overdueRooms.dart';

class Dorm extends StatefulWidget {
  @override
  _DormState createState() => _DormState();
}

class _DormState extends State<Dorm> {
  overdue() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {
            MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (BuildContext context) => overdueRooms());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("ค้างชำระ")),
    );
  }

  emptyRoom() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {
            MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (BuildContext context) => emptyRooms());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("ห้องที่ว่าง")),
    );
  }

  electronic() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {
            MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (BuildContext context) => Electronic());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("เครื่องใช้ไฟฟ้า")),
    );
  }

  allRooms() {
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dormitory")),
      backgroundColor: Colors.pink[200],
      body: new Container(
        margin: EdgeInsets.all(5),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                overdue(),
                Padding(padding: EdgeInsets.all(5)),
                emptyRoom(),
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
}
