import 'package:flutter/material.dart';
import 'package:gojek_clone/pages/home.dart';
import 'package:gojek_clone/pages/inbox.dart';
import 'package:gojek_clone/pages/profile.dart';

import 'package:gojek_clone/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  @override
  _MyhomePageState createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  int _selectedIndex = 0;

  final _layout = [HomeScreen(), Inbox(), Profile()];

  void _ontabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layout.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email),
            title: Text('Email'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _ontabItem,
      ),
    );
  }
}
