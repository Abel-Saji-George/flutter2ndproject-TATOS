import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.colour,
      this.cardChild,
      this.flag = 0,
      @required this.high,
      this.onpress});
  final Color colour;
  final List<Widget> cardChild;
  final Function onpress;
  final double high;
  final int flag;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: high,
        width: flag == 0 ? Get.width / 2.4 : Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: cardChild,
        ),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}

var widgetList = [
  IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Color(0xFF3B404E),
      ),
      onPressed: () {}),
  Expanded(child: SizedBox()),
  IconButton(
      icon: Icon(
        Icons.more_horiz,
        color: Color(0xFF3B404E),
      ),
      onPressed: () {})
];
//
// class IconList {
//   var widgetList = [
//     IconButton(
//         icon: Icon(
//           Icons.arrow_back,
//           color: Color(0xFF3B404E),
//         ),
//         onPressed: () {}),
//     Expanded(child: SizedBox()),
//     IconButton(
//         icon: Icon(
//           Icons.more_horiz,
//           color: Color(0xFF3B404E),
//         ),
//         onPressed: () {})
//   ];
// }
var list = [
  Icon(
    Icons.star,
    color: Color(0xFF826758),
  ),
  Icon(
    Icons.star,
    color: Color(0xFF826758),
  ),
  Icon(
    Icons.star,
    color: Color(0xFF826758),
  ),
  Icon(
    Icons.star,
    color: Color(0xFF826758),
  ),
  Icon(
    Icons.star,
    color: Color(0xFF826758),
  ),
];
