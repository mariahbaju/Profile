import 'package:flutter/material.dart';
import 'package:project_to_do_app/Aboutpage.dart';
import 'package:project_to_do_app/Completedpage.dart';
import 'package:project_to_do_app/Homepage.dart';
import 'package:project_to_do_app/Settingpage.dart';

class Indexpage extends StatefulWidget {
  Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  int _bottomNavbar=0;
  List<Widget> _pages=[
    Homepage(),
    Completedpage(),
    Settingpage(),
    Aboutpage(),

  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: _pages[_bottomNavbar],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:_bottomNavbar ,
          onTap: (index){
            setState(() {
              _bottomNavbar =index;
            });
          },
          backgroundColor: Color(0xff8e24aa),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items:[
            BottomNavigationBarItem(icon: Icon(Icons.home),label: ' الرئيسية'),
            BottomNavigationBarItem(icon: Icon(Icons.check_circle),label: ' المكتملة'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: ' الإعدادات'),
            BottomNavigationBarItem(icon: Icon(Icons.info),label: ' حول التطبيق'),
          ],
        ));
  }
}