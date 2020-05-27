import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/thisIsPage.dart';
import 'package:flutterapp/whatIsPage.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController;
  int _selectedIndex = 0;

  void _onPageChange(int index){
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(_selectedIndex, duration: Duration(milliseconds: 170), curve: Curves.easeIn);
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.grey[900],
          leading: Icon(
            Icons.camera,
            color: Colors.lightGreen,
            size: 30,
          ),
          title: Text('App title')),
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.horizontal,
        onPageChanged: _onPageChange,
        children: <Widget>[
          WhatIsPage(),
          ThisIsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[900],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('What is'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera,),
            title: Text('This is'),
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedLabelStyle: TextStyle(fontSize: 0),
        unselectedItemColor: Colors.grey[600],
        selectedItemColor: Colors.lightGreen,
        onTap: _onPageChange,
      ),
    );
  }
}