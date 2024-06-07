import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:new_nike/Pages/Posts.dart';
import 'package:new_nike/Pages/Profile.dart';
import 'package:new_nike/Pages/home_screen.dart';
import 'package:new_nike/Pages/setting.dart';

class BottomModalSheet extends StatefulWidget {
  const BottomModalSheet({super.key});

  @override
  State<BottomModalSheet> createState() => _BottomModalSheetState();
}

class _BottomModalSheetState extends State<BottomModalSheet> {

  int _selectedIndex = 0;

  void _navigateBottomBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  final List<Widget> _pages = [
    HomeScreen(),
    PostsScreen(),
    SettingScreen(),
    ProfileScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(21, 29, 37, 1.0),
        selectedItemColor: Color.fromRGBO(31, 121, 132, 1.0),
        unselectedItemColor: Color.fromRGBO(255, 255, 252, 1),
        

        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,
          color: Colors.white),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.post_add_outlined,
            color: Colors.white,),label: 'Posts'),
          BottomNavigationBarItem(icon: Icon(Icons.settings_accessibility_outlined,
            color: Colors.white,),label: 'Setting'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,
            color: Colors.white,),label: 'Profile'),
        ],
      ),


    );
  }
}
