import 'package:flutter/material.dart';
import 'package:Jittirat/app/Noti.dart';
import 'package:Jittirat/app/Dashboard.dart';
import 'package:Jittirat/app/Dorm.dart';

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
        scaffoldBackgroundColor: Colors.pink[50],
      ),
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Dashboard(),
    Dorm(),
    Noti(),
  ];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.domain),
              label: 'Dormitory',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail),
              label: 'Notification',
            ),
          ],
          selectedItemColor: Colors.limeAccent,
          selectedLabelStyle: TextStyle(fontSize: 15),
          unselectedItemColor: Colors.white,
          backgroundColor: Colors.pink,
          onTap: onTappedBar,
          currentIndex: _currentIndex,
        ),
      ),
    );
  }
}
