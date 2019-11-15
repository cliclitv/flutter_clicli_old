import 'package:flutter/material.dart';
import 'package:flutter_clicli/pages/home_page.dart';
import 'package:flutter_clicli/pages/my_page.dart';
import 'package:flutter_clicli/pages/new_page.dart';
import 'package:flutter_clicli/pages/ugc_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  TabNavigatorState createState() => TabNavigatorState();
}

class TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.deepPurpleAccent;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _controller,
          children: <Widget>[
            HomePage(),
            NewPage(),
            UgcPage(),
            MyPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.home,
                color: _activeColor,
              ),
              title: Text(
                '主站',
                style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor : _activeColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.video_call,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.video_call,
                color: _activeColor,
              ),
              title: Text(
                '新番',
                style: TextStyle(
                  color: _currentIndex != 1 ? _defaultColor : _activeColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.create,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.create,
                color: _activeColor,
              ),
              title: Text(
                '原创',
                style: TextStyle(
                  color: _currentIndex != 2 ? _defaultColor : _activeColor,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: _defaultColor,
              ),
              activeIcon: Icon(
                Icons.account_circle,
                color: _activeColor,
              ),
              title: Text(
                '我的',
                style: TextStyle(
                  color: _currentIndex != 3 ? _defaultColor : _activeColor,
                ),
              ),
            ),
          ],
        ));
  }
}
