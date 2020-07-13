import 'package:flutter/material.dart';
import 'Home_page.dart';
import 'Search_page.dart';
import 'Profile_page.dart';
import 'Module/Login/login_view.dart';
import 'Inst_Login.dart';
import 'auth.dart';

void main() => runApp(new MyApp());


class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  int _selectedTab = 0;
  final _pageOptions = [
    HomePage(),
    LoginPage(),
    Statistic_page(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.group_add),
              title: Text('Statistic'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
            ),
          ],
        ),
      ),
    );
  }
}