import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('I am Rich'),
          backgroundColor: Colors.redAccent,
        ),
        body: const Center(
          child: Image(
            image:
            NetworkImage('https://www.w3schools.com/w3css/img_lights.jpg'),
          ),
        ),
      ),
    );
  }
}
