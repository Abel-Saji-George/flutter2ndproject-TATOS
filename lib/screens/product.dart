import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newpro/components.dart';
import 'package:newpro/constants.dart';
import 'package:newpro/screens/armchairs.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Product extends StatefulWidget {
  final String imageName;
  final String maker;
  final String price;
  final String heading;
  final String tag;
  final int flag;
  final int judge;
  Product(
      {this.imageName,
      this.tag,
      this.judge = 0,
      this.maker,
      this.price,
      this.flag = 0,
      this.heading});
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Color(0xFF3B404E),
              ),
              onPressed: () {
                setState(() {
                  Get.off(() => ArmChairs());
                });
              }),
          Expanded(child: SizedBox()),
          IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Color(0xFF3B404E),
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Text(
                  '${widget.heading}\nArmchair',
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'MonumentExtended',
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 23.17, bottom: 27.97),
                  child: Text(
                    'BY ${widget.maker}',
                    style: TextStyle(
                      fontFamily: 'MonumentExtended',
                      fontSize: 13,
                      color: Color(0xFFBDBDC1),
                    ),
                  ),
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    widget.judge == 0
                        ? Positioned(
                            top: 32,
                            child: Container(
                              width: 310,
                              height: 310,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xFF9D7D68),
                                  Color(0xFF463635)
                                ]),
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                        : Positioned(
                            child: Container(
                              width: 210,
                              height: 210,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  Color(0xFF9D7D68),
                                  Color(0xFF463635)
                                ]),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                    widget.flag == 0
                        ? Hero(
                            tag: widget.tag,
                            child: widget.judge == 0
                                ? Container(
                                    width: 326,
                                    height: 403,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                      fit: BoxFit.fill,
                                      image: AssetImage(
                                          'Assets/${widget.imageName}.png'),
                                    )),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      width: 150,
                                      height: 200,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'Assets/${widget.imageName}.png'),
                                      )),
                                    ),
                                  ),
                          )
                        : Container(
                            width: 326,
                            height: 403,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('Assets/LeatherArmchair.png'),
                              ),
                            ),
                          ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39.03),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '\$',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xFF3B404E),
                                      fontFamily: 'Gilroy'),
                                ),
                              ],
                            ),
                            Text(
                              '${widget.price}',
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xFF3B404E),
                                  fontFamily: 'Gilroy'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SmoothStarRating(
                              color: Color(0xFF826758),
                              borderColor: Color(0xFF826758),
                              rating: rating,
                              size: 25,
                              starCount: 5,
                              onRated: (value) {
                                setState(() {
                                  rating = value;
                                });
                              },
                            ),
                            Row(
                              children: [
                                SizedBox(width: 1),
                                Text(
                                  'Reviews',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'MonumentExtended',
                                    color: Color(0xFF3B404E),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.83, bottom: 40),
                  child: Container(
                    child: Center(
                      child: Text(
                        'PURCHASE',
                        style: TextStyle(
                          color: Color(0XFF6F584D),
                          fontFamily: 'MonumentExtended',
                          fontSize: 10,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Color(
                          0xFFDDD8D3,
                        ),
                        width: 2,
                      ),
                    ),
                    height: 57.62,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
