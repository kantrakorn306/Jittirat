import 'package:flutter/material.dart';
import 'package:Jittirat/app/form/roomForm.dart';

class emptyRooms extends StatefulWidget {
  @override
  _emptyRoomsState createState() => _emptyRoomsState();
}

class _emptyRoomsState extends State<emptyRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("ห้องที่ว่างทั้งหมด")),
      backgroundColor: Colors.pink[200],
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
