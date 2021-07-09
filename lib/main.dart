import 'package:flutter/material.dart';
import 'package:gojek_clone/pages/chat.dart';
import 'package:gojek_clone/pages/home.dart';
import 'package:gojek_clone/pages/inbox.dart';
import 'package:gojek_clone/pages/orders.dart';
import 'package:gojek_clone/pages/profile.dart';

import 'package:gojek_clone/pages/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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

  final _layout = [
    HomeScreen(),
    Orders(),
    Chat(),
    Inbox(),
    Profile(),
  ];

  void _ontabItem(int index) {
    //--> buatkan fungsi
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
              color: Colors.green,
            ),
            title: Text(
              'Home',
              style: GoogleFonts.poppins(color: Colors.green),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.article_outlined,
              color: Colors.green,
            ),
            title: Text(
              'Orders',
              style: GoogleFonts.poppins(color: Colors.green),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.green,
            ),
            title: Text(
              'Chat',
              style: GoogleFonts.poppins(color: Colors.green),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: Colors.green,
            ),
            title: Text(
              'Email',
              style: GoogleFonts.poppins(color: Colors.green),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.green,
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.poppins(color: Colors.green),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _ontabItem,
      ),
    );
  }
}
