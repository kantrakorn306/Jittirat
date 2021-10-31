import 'package:flutter/material.dart';
import 'package:jittirat/app/options/form/roomForm.dart';

class emptyRooms extends StatefulWidget {
  @override
  _emptyRoomsState createState() => _emptyRoomsState();
}

class _emptyRoomsState extends State<emptyRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("ห้องที่ว่างทั้งหมด")),
      body: new Container(
        margin: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[for (int i = 0; i < 3; i++) roomAll()],
        ),
      ),
    );
  }

  SizedBox roomAll() {
    return SizedBox(
      height: 50,
      width: 100,
      child: new ElevatedButton(
          onPressed: () {
            MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (BuildContext context) => roomForm());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("A101")),
    );
  }
}
