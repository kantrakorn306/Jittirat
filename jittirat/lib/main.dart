import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jittirat',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [
    Center(child: Text("Dashboard")),
    Center(child: Text("Dorm")),
    Center(child: Text("Home")),
    Center(child: Text("Notification")),
  ];
  final topic = [
    Title(color: Colors.pink, child: Text("Dashboard")),
    Title(color: Colors.green, child: Text("Dormination")),
    Title(color: Colors.blue, child: Text("Home")),
    Title(color: Colors.red, child: Text("Notification")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: topic[_currentIndex],
      ),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              label: 'Dashboard',
              backgroundColor: Colors.pink,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.domain),
              label: 'Dormitory',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Notification',
              backgroundColor: Colors.red,
            ),
          ],
          selectedItemColor: Colors.amber[800],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
