import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        ],
      )),
    );
  }
}
