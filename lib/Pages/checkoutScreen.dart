import 'package:finalproject/Pages/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:lottie/lottie.dart';

class checkOutScreen extends StatefulWidget {
  const checkOutScreen({super.key});

  @override
  State<checkOutScreen> createState() => _checkOutScreenState();
}

class _checkOutScreenState extends State<checkOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacementNamed("/homeScreen");
        },
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Lottie.network(
                "https://assets7.lottiefiles.com/packages/lf20_rc5d0f61.json",
                width: 80,
                height: 80)),
      )),
    );
  }
}
