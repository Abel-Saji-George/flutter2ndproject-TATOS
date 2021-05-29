import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newpro/components.dart';
import 'package:newpro/constants.dart';
import 'package:newpro/screens/livingroom.dart';
import 'package:newpro/screens/product.dart';

class ArmChairs extends StatefulWidget {
  const ArmChairs({Key key}) : super(key: key);

  @override
  _ArmChairsState createState() => _ArmChairsState();
}

class _ArmChairsState extends State<ArmChairs> {
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
                    Get.off(() => LivingRoom());
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.51),
                  child: Container(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: kTextFieldInputDecoration,
                    ),
                  ),
                ),
                Text(
                  'Armchairs',
                  style: kHeadingTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 36.55),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              Get.off(
                                () => Product(
                                  imageName: 'noname',
                                  maker: 'EVAN GEORGE',
                                  price: '1,999',
                                  tag: 'noname-armchair',
                                  heading: 'Scabbard',
                                  judge: 1,
                                ),
                              );
                            },
                          );
                        },
                        child: ReusableCard(
                            colour: Color(0xFFF5F5F5),
                            high: 196.26,
                            cardChild: [
                              Hero(
                                tag: 'noname-armchair',
                                child: Image(
                                  image: AssetImage('Assets/noname.png'),
                                ),
                              ),
                            ]),
                      ),
                      Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              Get.off(
                                () => Product(
                                  imageName: 'sheley',
                                  maker: 'JONAS SAN',
                                  price: '1,999',
                                  heading: 'Sheley',
                                  tag: 'sheley-armchair',
                                ),
                              );
                            },
                          );
                        },
                        child: ReusableCard(
                            colour: Color(0xFF596272),
                            high: 280.61,
                            cardChild: [
                              Hero(
                                tag: 'sheley-armchair',
                                child: Image(
                                  image: AssetImage('Assets/sheley.png'),
                                ),
                              ),
                              SizedBox(
                                height: 23.45,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sheley',
                                    style: TextStyle(
                                        fontFamily: 'MonumentExtended',
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    '1,999',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'MonumentExtended',
                                        color: Color(0xFF969EAC)),
                                  )
                                ],
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 36.5, bottom: 42.41),
                      child: Container(
                        height: 254.3,
                        width: Get.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 170, left: 40),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'LAWSON',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'MonumentExtended',
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        '7999',
                                        style: TextStyle(
                                          color: Color(0xFFDBD5CF),
                                          fontFamily: 'MonumentExtended',
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(child: SizedBox()),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 18),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF686262),
                                          shape: BoxShape.circle),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.arrow_forward_rounded,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        onPressed: () {
                                          setState(
                                            () {
                                              Get.off(
                                                () => Product(
                                                  imageName: 'LeatherArmchair',
                                                  maker: 'JAMIE HYON',
                                                  price: '7,999',
                                                  heading: 'Leather',
                                                  flag: 1,
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFBCB3AB), Color(0xFF797169)]),
                            borderRadius: BorderRadius.circular(40)),
                      ),
                    ),
                    Positioned(
                      top: -50,
                      left: -10,
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              Get.off(
                                () => Product(
                                  imageName: 'lawson',
                                  maker: 'JACK RIP',
                                  price: '7,999',
                                  heading: 'Lawson',
                                  tag: 'lawson-armchair',
                                ),
                              );
                            },
                          );
                        },
                        child: Hero(
                          tag: 'lawson-armchair',
                          child: Image(
                            image: AssetImage('Assets/lawson.png'),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
