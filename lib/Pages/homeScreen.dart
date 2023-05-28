import 'dart:ffi';
import 'dart:math';

import 'package:finalproject/Widget/appBar.dart';

import 'package:finalproject/widget/carouselSlider.dart';
import 'package:finalproject/pages/itemScreen.dart';
import 'package:finalproject/pages/loginScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class homeScreen extends StatefulWidget {
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class args {
  final int value;
  args(this.value);
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
        children: [
          appBar(),
          Container(
              // width: double.infinity,
              padding: const EdgeInsets.only(top: 15, left: 10),
              child: Column(
                children: [
                  Container(
                    child: Row(children: [
                      Text(
                        "Welcome to Pet ",
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        "LIFE",
                        style:
                            TextStyle(fontSize: 24, color: Colors.green[800]),
                      )
                    ]),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Tshe most complete online pet shop with unique \nitems and affordable prices",
                      style: TextStyle(fontSize: 12, color: Colors.black45),
                    ),
                  )
                ],
              )),
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Image.network(
                    "https://www.linkpicture.com/q/AbstractShape_1.png"),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 40),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 4),
                              blurRadius: 4)
                        ]),
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 5, bottom: 20),
                          child: Row(
                            children: [
                              Text(
                                "Special Offer For You ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Icon(
                                Icons.local_offer_sharp,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          // margin: const EdgeInsets.only(top: 20),
                          // width: 200,

                          child: carouselSlider(),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 80, left: 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Choose Our Kind",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                      child: GridView(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/itemScreen', arguments: 0);
                            },
                            style: ElevatedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                backgroundColor: Color(0xFFDAE08D)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(
                                  "https://www.linkpicture.com/q/Acc.png",
                                ),
                                Text("Accessories",
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12))
                              ],
                            )),
                      ),
                      Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushNamed('/itemScreen', arguments: 1);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  backgroundColor: Color(0xFF58B1F1)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    "https://www.linkpicture.com/q/Food.png",
                                    fit: BoxFit.fitWidth,
                                  ),
                                  Container(
                                    child: Text("Food",
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14)),
                                  )
                                ],
                              ))),
                      Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/itemScreen',
                                    arguments: 2);
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  backgroundColor: Color(0xFF92EFD9)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.network(
                                    "https://www.linkpicture.com/q/Treatment.png",
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(top: 5),
                                      child: Text(
                                        "Treatment",
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ))
                                ],
                              ))),
                    ],
                  ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
