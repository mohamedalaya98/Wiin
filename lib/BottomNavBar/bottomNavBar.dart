import 'package:flutter/material.dart';
import 'package:wiin/AddPost/newPostScreen.dart';
import 'package:wiin/Home/home.dart';
import 'package:wiin/Messages/messageScreen.dart';
import 'package:wiin/Profile/ProfileScreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  // ignore: prefer_final_fields
  List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const NewPostScreen(),
    const Messages(),
    const Profile(),
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
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined),
            label: 'New Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms_outlined),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
