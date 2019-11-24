import 'package:flutter/material.dart';
import 'package:flutter_clicli/dao/home_dao.dart';
import 'package:flutter_clicli/model/home_model.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  String restr = "";
  @override
  void initState(){
    super.initState();
    loadData();
  }
  loadData() async {
    HomeModel model = await HomeDao.fetch();
    setState(() {
      restr = json.encode(model);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(restr),
        )
    );
  }
}