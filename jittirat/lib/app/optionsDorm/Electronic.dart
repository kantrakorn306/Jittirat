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
      body: new Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            Column(
              children: [
                for (int i = 0; i < 3; i++)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [for (int i = 0; i < 3; i++) roomAll()],
                  ),
              ],
            )
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
        child: new ElevatedButton(onPressed: () {}, child: new Text("A101")),
      ),
    );
  }
}
