import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';
import 'package:iconly/iconly.dart';
import 'package:photography_app/pages/profile_page.dart';
import 'package:photography_app/pages/single_profile_page.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _PhotographyHomeState();
}

class _PhotographyHomeState extends State<Home> {
  var _currentIndex = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    ProfilePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    SingleProfile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBroken.home,
              color: Colors.black38,
            ),
            label: '',
            backgroundColor: Color(0xFFFFFFFF),
            activeIcon: Icon(
              IconlyBold.home,
              color: Colors.black38,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBroken.search,
              color: Colors.black38,
            ),
            label: '',
            activeIcon: Icon(
              IconlyBold.search,
              color: Colors.black38,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBold.plus,
              size: 40,
              color: Color(0xff2db3cd),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBroken.heart,
              color: Colors.black38,
            ),
            label: '',
            activeIcon: Icon(
              IconlyBold.heart,
              color: Colors.black38,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              IconlyBroken.profile,
              color: Colors.black38,
            ),
            activeIcon: Icon(
              IconlyBold.profile,
              color: Colors.black38,
            ),
            label: '',
            backgroundColor: Color(0xFFFFFFFF),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
