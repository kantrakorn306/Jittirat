import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  overdue() {
    return SizedBox(
      height: 200,
      width: 400,
      child: new ElevatedButton(onPressed: () {}, child: new Text("รายได้")),
    );
  }

  overdue3() {
    return SizedBox(
      height: 400,
      width: 400,
      child: new ElevatedButton(onPressed: () {}, child: new Text("ค่าไฟฟ้า")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Dashboard")),
      body: new Container(
        margin: EdgeInsets.all(5),
        child: (Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                overdue(),
                Padding(padding: EdgeInsets.all(5)),
                overdue3(),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
