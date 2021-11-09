import 'package:flutter/material.dart';
import 'package:Jittirat/app/form/payRentForm.dart';

class Noti extends StatefulWidget {
  @override
  _NotiState createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  notiElectronic() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {}, child: new Text("แจ้งเช่าเครื่องใช้ไฟ้ฟ้า")),
    );
  }

  notiBroken() {
    return SizedBox(
      height: 200,
      width: 200,
      child:
          new ElevatedButton(onPressed: () {}, child: new Text("แจ้งของชำรุด")),
    );
  }

  etc() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(onPressed: () {}, child: new Text("อื่นๆ")),
    );
  }

  notiOverdue() {
    return SizedBox(
        height: 200,
        width: 200,
        child: new ElevatedButton(
            onPressed: () {
              MaterialPageRoute materialPageRoute = MaterialPageRoute(
                  builder: (BuildContext context) => payRentForm());
              Navigator.of(context).push(materialPageRoute);
            },
            child: new Text("ค้างชำระ")));
  }

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
                notiOverdue(),
                Padding(padding: EdgeInsets.all(5)),
                notiElectronic(),
              ],
            ),
            Column(
              children: [
                notiBroken(),
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
