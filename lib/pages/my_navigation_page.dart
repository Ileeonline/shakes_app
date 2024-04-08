// ignore_for_file: prefer_final_fields, unused_field, unused_element, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bookmarks_page.dart';
import 'chat_page.dart';
import 'home_page.dart';
import 'profile_page.dart';

class MyNavigationPage extends StatefulWidget {
  const MyNavigationPage({super.key});

  @override
  State<MyNavigationPage> createState() => _MyNavigationPageState();
}

class _MyNavigationPageState extends State<MyNavigationPage> {

int _selectedIndex=0;

final List<Widget> _pages=const [
  HomePage(),
  ChatPage(),
  BookMarksPage(),
  ProfilePage(),
];

void _onItemTapped(int index){
  setState(() {
    _selectedIndex=index;
  });
}

 

@override
Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffF4526A),
        unselectedItemColor: Color.fromARGB(255, 232, 132, 147),
        elevation: 0,
        showSelectedLabels: true,
      selectedLabelStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
      selectedIconTheme: CupertinoIconThemeData(color: Color(0xffF4526A)),
      unselectedIconTheme: CupertinoIconThemeData(color: Color.fromARGB(255, 232, 132, 147)),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: 
           const [
        BottomNavigationBarItem(icon: Icon( CupertinoIcons.home,),label: 'Home',),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble,),label: 'Chat'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.bookmark,),label: 'Bookmarks'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.person,),label: 'Profile'),
      ]
      ),
      body: _pages[_selectedIndex],
    );
  }
}