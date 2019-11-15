import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  MyState createState() => MyState();
}

class MyState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('我的'),
      ),
    );
  }
}
