import 'package:flutter/material.dart';

class notiForm extends StatefulWidget {
  @override
  _notiFormState createState() => _notiFormState();
}

class _notiFormState extends State<notiForm> {
  roomAll() {
    return Container(
        margin: EdgeInsets.only(top: 15, left: 220),
        height: 50,
        width: 75,
        child: new ElevatedButton(
          onPressed: () {},
          child: new Text("สำเร็จ"),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: BorderSide(width: 1, color: Colors.white),
          )),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A101"),
      ),
      backgroundColor: Colors.pink[200],
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(top: 50, left: 15)),
                Text("หัวข้อ")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 1, color: Colors.black),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 0.5),
                          blurRadius: 0.1,
                        )
                      ]),
                  padding: EdgeInsets.all(15),
                  child: Text("data"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [roomAll()],
            )
          ],
        ),
      ),
    );
  }
}
