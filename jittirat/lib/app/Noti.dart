import 'package:Jittirat/app/optionsNoti/brokenNoti.dart';
import 'package:Jittirat/app/optionsNoti/electroNoti.dart';
import 'package:Jittirat/app/optionsNoti/etc.dart';
import 'package:Jittirat/app/optionsNoti/payNoti.dart';
import 'package:flutter/material.dart';

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
          onPressed: () {
            MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (BuildContext context) => electroNoti());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("แจ้งเช่าเครื่องใช้ไฟฟ้า")),
    );
  }

  notiBroken() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {
            MaterialPageRoute materialPageRoute = MaterialPageRoute(
                builder: (BuildContext context) => brokenNoti());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("แจ้งของชำรุด")),
    );
  }

  Etc() {
    return SizedBox(
      height: 200,
      width: 200,
      child: new ElevatedButton(
          onPressed: () {
            MaterialPageRoute materialPageRoute =
                MaterialPageRoute(builder: (BuildContext context) => etc());
            Navigator.of(context).push(materialPageRoute);
          },
          child: new Text("อื่นๆ")),
    );
  }

  notiOverdue() {
    return SizedBox(
        height: 200,
        width: 200,
        child: new ElevatedButton(
            onPressed: () {
              MaterialPageRoute materialPageRoute = MaterialPageRoute(
                  builder: (BuildContext context) => payNoti());
              Navigator.of(context).push(materialPageRoute);
            },
            child: new Text("ชำระค่าเช่า")));
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
                Etc(),
              ],
            )
          ],
        )),
      ),
    );
  }
}
