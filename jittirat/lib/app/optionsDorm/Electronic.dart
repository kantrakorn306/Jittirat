import 'package:Jittirat/app/form/roomForm.dart';
import 'package:flutter/material.dart';

class Electronic extends StatefulWidget {
  @override
  _ElectronicState createState() => _ElectronicState();
}

class _ElectronicState extends State<Electronic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("ห้องที่มีตู้เย็น&TV")),
      backgroundColor: Colors.pink[200],
      body: new Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Text("เหลือตู้เย็น 5 เครื่อง"),
                  Text("เหลือโทรทัศน์ 8 เครื่อง")
                ],
              ),
            ),
            Column(
              children: [
                for (int i = 0; i < 3; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [for (int i = 0; i < 3; i++) roomAll()],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  roomAll() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: SizedBox(
        height: 50,
        width: 100,
        child: new ElevatedButton(
            onPressed: () {
              MaterialPageRoute materialPageRoute = MaterialPageRoute(
                  builder: (BuildContext context) => roomForm());
              Navigator.of(context).push(materialPageRoute);
            },
            child: new Text("A101")),
      ),
    );
  }
}
