import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newpro/components.dart';
import 'package:newpro/constants.dart';
import 'package:newpro/screens/armchairs.dart';
import 'package:newpro/screens/product.dart';

class LivingRoom extends StatefulWidget {
  const LivingRoom({Key key}) : super(key: key);

  @override
  _LivingRoomState createState() => _LivingRoomState();
}

class _LivingRoomState extends State<LivingRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Living Room',
                style: kHeadingTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 31.46, bottom: 26.06, right: 22, left: 22),
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        ReusableCard(
                          colour: Colors.white,
                          high: 224.67,
                          cardChild: [
                            Image(
                              image: AssetImage('Assets/cozy.png'),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'COZY',
                              style: kLivingCardText,
                            ),
                          ],
                        ),
                        Container(
                          height: 37,
                          width: 68,
                          child: Center(
                            child: Text(
                              '1,990',
                              style: kPricetag,
                            ),
                          ),
                          decoration: BoxDecoration(
                            //tempcolor
                            color: Color(0xFF596272),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6),
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(child: SizedBox()),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ReusableCard(
                                colour: Colors.white,
                                high: 224.67,
                                cardChild: [
                                  Image(
                                    image: AssetImage('Assets/swivel.png'),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Swivel',
                                    style: kLivingCardText,
                                  ),
                                ]),
                            Container(
                              child: Center(
                                child: Text(
                                  '1,690',
                                  style: kPricetag,
                                ),
                              ),
                              height: 37,
                              width: 68,
                              decoration: BoxDecoration(
                                //tempcolor
                                color: Color(0xFFB6ADA5),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6),
                                  topRight: Radius.circular(6),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                overflow: Overflow.visible,
                children: [
                  Row(
                    children: [
                      ReusableCard(
                          colour: Colors.white,
                          high: 224.67,
                          cardChild: [
                            Image(
                              image: AssetImage('Assets/covered1.png'),
                            ),
                          ]),
                      Expanded(child: SizedBox()),
                      ReusableCard(
                          colour: Colors.white,
                          high: 224.67,
                          cardChild: [
                            Image(
                              image: AssetImage('Assets/covered2.png'),
                            ),
                          ]),
                    ],
                  ),
                  Positioned(
                      child: Container(
                    height: 289.77,
                    width: Get.width,
                    decoration: BoxDecoration(
                      //tempcolor
                      color: Color(0xFF596272),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 25.44, bottom: 31.61, left: 37, right: 37),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'BRANDS',
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'MonumentExtended',
                                color: Color(0xFFE5E5E5)),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 56.35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '&Kelvering',
                                      style: kStackedCardTextStyle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.8),
                                      child: Text(
                                        'Anglepoise',
                                        style: kStackedCardTextStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.8),
                                      child: Text(
                                        'Armadillo & Co',
                                        style: kStackedCardTextStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.8),
                                      child: Text(
                                        'Bensen',
                                        style: kStackedCardTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(top: 56.35),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '&Tradition',
                                      style: kStackedCardTextStyle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.8),
                                      child: Text(
                                        'Area Bedding',
                                        style: kStackedCardTextStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.8),
                                      child: Text(
                                        'Asplund',
                                        style: kStackedCardTextStyle,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 13.8),
                                      child: Text(
                                        'Blacksaw',
                                        style: kStackedCardTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 35),
                            child: Text(
                              'All Brands',
                              style: TextStyle(
                                  fontFamily: 'MonumentExtended',
                                  fontSize: 13,
                                  color: Color(0xFFB6ADA5)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                  Positioned(
                      bottom: 0,
                      child: Image(image: AssetImage('Assets/Mask Group.png')))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
