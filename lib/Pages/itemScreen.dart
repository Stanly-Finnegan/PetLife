import 'dart:ui';

import 'package:finalproject/widget/appBar.dart';
import 'package:finalproject/pages/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class itemScreen extends StatefulWidget {
  const itemScreen({super.key});

  @override
  State<itemScreen> createState() => _itemScreenState();
}

class _itemScreenState extends State<itemScreen> {
  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)!.settings.arguments as int;

    return DefaultTabController(
      initialIndex: index,
      length: 3,
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
          child: Center(
            child: Column(
              children: [
                appBar(),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  // width: MediaQuery.of(context).size.width,
                  height: 40,
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: (() {
                            print("back pressed");
                            Navigator.of(context).pop();
                          }),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.green[800],
                          )),
                      Flexible(
                        child: TextField(
                          cursorColor: Colors.grey,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black45),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(color: Colors.black45),
                            ),
                            hintText: 'Search',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 12),
                            prefixIcon: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Icon(
                                Icons.search,
                                size: 20,
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  // height: 40,
                  // width: double.maxFinite,
                  child: TabBar(
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.green[800],
                    splashBorderRadius: BorderRadius.circular(20),
                    tabs: [
                      Tab(text: "Accessories"),
                      Tab(
                        text: "Food",
                      ),
                      Tab(
                        text: "Treatment",
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green[800]),
                  ),
                ),
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      // color: Colors.red,
                      child: TabBarView(children: [
                        for (int i = 0; i < 3; i++)
                          GridView.count(
                            crossAxisCount: 2,
                            childAspectRatio: 0.8,
                            children: [
                              for (int j = 0; j < 8; j++)
                                Container(
                                  // padding: const EdgeInsets.all(10),
                                  margin: const EdgeInsets.all(10),

                                  child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/detailScreen');
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          backgroundColor: Colors.white),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Image.network(
                                            "https://www.linkpicture.com/q/PetLifeLogo_1.png",
                                          ),
                                          Text("Pet Life",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14)),
                                          Text("\$50",
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 12))
                                        ],
                                      )),
                                ),
                            ],
                          ),
                      ]),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
