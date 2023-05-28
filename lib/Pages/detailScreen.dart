import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  int count = 0;

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  void _decrementCounter() {
    setState(() {
      count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 35),
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10, left: 5, right: 5),
            decoration: BoxDecoration(
                // color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            height: 350,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.network(
                  "https://www.linkpicture.com/q/PetLifeLogo_1.png",
                ),
                Container(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.green[800],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.share)
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: RatingBar.builder(
                  initialRating: 4,
                  itemSize: 30,
                  itemBuilder: ((context, _) => Icon(
                        Icons.favorite,
                        color: Colors.red[600],
                      )),
                  onRatingUpdate: (rating) {
                    print(rating);
                  })),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20),
            child: Text(
              "Pet Life Property",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green[800]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2, left: 20),
            child: Text(
              "Pet Life Factory",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
          Container(
            // color: Colors.amber,
            padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
            child: Text(
              "This is more detailed description of the product. You can write here more about the product. this is lenghty description.",
              style: TextStyle(
                fontSize: 12,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: Colors.green[200],
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 10)
                        ]),
                    child: InkWell(
                      onTap: (() {
                        _decrementCounter();
                      }),
                      child: Icon(
                        CupertinoIcons.minus,
                        size: 25,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$count",
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[800]),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.green[200],
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]),
                      child: InkWell(
                        onTap: () {
                          _incrementCounter();
                        },
                        child: Icon(
                          CupertinoIcons.plus,
                          size: 25,
                        ),
                      )),
                  Spacer(),
                  Container(
                    child: Text(
                      "\$${count * 50}",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )),
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 290,
            margin: const EdgeInsets.only(top: 40, bottom: 40),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  fixedSize: Size(180, 50),
                  backgroundColor: Colors.green[800],
                ),
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed("/cartScreen", arguments: count);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Add to Cart",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 20)),
                    Icon(CupertinoIcons.cart_badge_plus)
                  ],
                )),
          )
        ],
      ),
    );
  }
}
