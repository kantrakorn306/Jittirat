import 'package:flutter/material.dart';
import 'package:jittirat/app/options/form/payRentForm.dart';

class Noti extends StatefulWidget {
  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Notification")),
      body: new Container(
        margin: EdgeInsets.all(5),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: new ElevatedButton(
                      onPressed: () {
                        MaterialPageRoute materialPageRoute = MaterialPageRoute(
                            builder: (BuildContext context) => payRentForm());
                        Navigator.of(context).push(materialPageRoute);
                      },
                      child: new Text("ค้างชำระ")),
                ),
                Padding(padding: EdgeInsets.all(5)),
                electronic(),
              ],
            ),
            Column(
              children: [
                broken(),
                Padding(padding: EdgeInsets.all(5)),
                etc(),
              ],
            )
          ],
        )),
      ),
    );
  }
}

SizedBox electronic() {
  return SizedBox(
    height: 200,
    width: 200,
    child: new ElevatedButton(
        onPressed: () {}, child: new Text("แจ้งเช่าเครื่องใช้ไฟ้ฟ้า")),
  );
}

SizedBox broken() {
  return SizedBox(
    height: 200,
    width: 200,
    child:
        new ElevatedButton(onPressed: () {}, child: new Text("แจ้งของชำรุด")),
  );
}

SizedBox etc() {
  return SizedBox(
    height: 200,
    width: 200,
    child: new ElevatedButton(onPressed: () {}, child: new Text("อื่นๆ")),
  );
}
