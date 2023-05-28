import 'package:finalproject/Pages/cartScreen.dart';
import 'package:finalproject/Pages/checkoutScreen.dart';
import 'package:finalproject/Pages/detailScreen.dart';
import 'package:finalproject/Pages/homeScreen.dart';
import 'package:finalproject/Pages/itemScreen.dart';
import 'package:finalproject/Pages/mainScreen.dart';
import 'package:finalproject/Pages/loginScreen.dart';
import 'package:finalproject/Pages/registerScreen.dart';
import 'package:finalproject/Widget/carouselSlider.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
      routes: {
        "/loginScreen": (context) => loginScreen(),
        "/registerScreen": (context) => registerScreen(),
        "/homeScreen": (context) => homeScreen(),
        "/itemScreen": (context) => itemScreen(),
        "/cartScreen": (context) => cartScreen(),
        "/detailScreen": (context) => detailScreen(),
        "/checkOutScreen": (context) => checkOutScreen()
      },
    );
  }
}
