import 'package:Jittirat/app/form/notiForm.dart';
import 'package:flutter/material.dart';

class brokenNoti extends StatefulWidget {
  @override
  _brokenNotiState createState() => _brokenNotiState();
}

class _brokenNotiState extends State<brokenNoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("แจ้งของชำรุด")),
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
                  builder: (BuildContext context) => notiForm());
              Navigator.of(context).push(materialPageRoute);
            },
            child: new Text("A101")),
      ),
    );
  }
}
