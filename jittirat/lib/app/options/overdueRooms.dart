import 'package:flutter/material.dart';
import 'package:Jittirat/app/form/overdueForm.dart';

class overdueRooms extends StatefulWidget {
  @override
  _overdueRoomsState createState() => _overdueRoomsState();
}

class _overdueRoomsState extends State<overdueRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("ห้องที่ค้างค่าชำระ")),
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
                builder: (BuildContext context) => overdueForm());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("A101")),
    );
  }
}
