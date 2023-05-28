import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carouselSlider extends StatefulWidget {
  const carouselSlider({super.key});

  @override
  State<carouselSlider> createState() => _carouselSliderState();
}

class _carouselSliderState extends State<carouselSlider> {
  @override
  int _current = 0;

  List<Widget> imglst = [
    Image.asset("assets/NemoHomePage.jpg"),
    Image.asset("assets/DoriHomePage.jpg"),
    Image.asset("assets/IkanHomePage.jpg")
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            CarouselSlider(
              // items: imglst.map((lst) {
              //   return Image.asset(
              //     "${lst}",
              //   );
              // }).toList()
              //

              items: [
                Image.network(
                  "https://www.linkpicture.com/q/Promo1_2.jpg",
                ),
                Image.network(
                  "https://www.linkpicture.com/q/Promo2_2.jpg",
                ),
                Image.network(
                  "https://www.linkpicture.com/q/Promo3_2.jpg",
                )
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 3),
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  onPageChanged: ((index, reason) {
                    setState(() {
                      _current = index;
                    });
                  })),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: imglst.asMap().entries.map((entry) {
            //     return GestureDetector(
            //       onTap: () => CarouselController().animateToPage(entry.key),
            //       child: Container(
            //         width: 10.0,
            //         height: 10.0,
            //         margin: EdgeInsets.symmetric(horizontal: 4.0),
            //         decoration: BoxDecoration(
            //             shape: BoxShape.circle,
            //             color: (Theme.of(context).brightness == Brightness.dark
            //                     ? Colors.white
            //                     : Colors.black)
            //                 .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            //       ),
            //     );
            //   }).toList(),
            // ),
          ],
        ),
      ),
    );
  }
}
