import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  @override
  NewState createState() => NewState();
}

class NewState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('新番'),
      ),
    );
  }
}
