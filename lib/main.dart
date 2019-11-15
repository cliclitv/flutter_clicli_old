import 'package:flutter/material.dart';
import 'package:flutter_clicli/navigator/tab_navigator.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hello world',
      home: TabNavigator()
    );
  }
}