import 'package:flutter/material.dart';
import 'package:login_screen/screenList/profile.dart';

import 'screenList/homescreen.dart';
import 'screenList/libary.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    List<BottomNavigationBarItem> items = [
      const BottomNavigationBarItem(icon: Icon(Icons.games),label: "Games"),
      const BottomNavigationBarItem(icon: Icon(Icons.apps),label: "App"),
      const BottomNavigationBarItem(icon: Icon(Icons.movie),label: "Movies & TV"),
    ];

    List<Widget> screenList =const [
      HomeScreen(),
      Libary(),
      Profile(), 
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (int val){
          setState(() {
            selectedIndex =val;
          });
        },
        items: items),
      body: screenList[selectedIndex],
    );
  }
}