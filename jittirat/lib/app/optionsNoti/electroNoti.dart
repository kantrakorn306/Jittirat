import 'package:flutter/material.dart';

class electroNoti extends StatefulWidget {
  @override
  _electroNotiState createState() => _electroNotiState();
}

class _electroNotiState extends State<electroNoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("แจ้งเช่าเครื่องใช้ไฟฟ้า")),
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
