import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:finalproject/Pages/homeScreen.dart';
import 'package:finalproject/Pages/itemScreen.dart';
import 'package:finalproject/Pages/cartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int index = 0;

  List screens = [homeScreen(), cartScreen(), itemScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.transparent,
            index: index,
            onTap: (selectedindex) {
              index = selectedindex;
            },
            height: 50,
            color: Colors.green.shade800,
            items: [
              Icon(
                Icons.home,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                CupertinoIcons.cart,
                size: 25,
                color: Colors.white,
              ),
              Icon(
                Icons.list,
                size: 25,
                color: Colors.white,
              )
            ]),
        body: screens[index]);
  }
}
