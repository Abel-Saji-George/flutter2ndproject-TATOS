import 'package:flutter/material.dart';

const kTextColor = Color(0xFF3B404E);
const kBottomContainerColor = Color(0xFFEB1555);
const kLivingCardText = TextStyle(
    fontFamily: 'MonumentExtended', fontSize: 14, color: Color(0xFF5D5557));

const kHeadingTextStyle = TextStyle(
  fontSize: 16,
  fontFamily: 'MonumentExtended',
  color: Color(0xFF3B404E),
);

const kPricetag = TextStyle(
    fontSize: 13, fontFamily: 'MonumentExtended', color: Colors.white);

const kStackedCardTextStyle = TextStyle(
  fontSize: 13,
  fontFamily: 'MonumentExtended',
  color: Color(0xFF969EAC),
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Color(0xFFF5F5F5),
  suffixIcon: Icon(
    Icons.search,
    color: Color(0xFFCCCFD3),
  ),
  hintText: 'Search for items',
  hintStyle: TextStyle(
    color: Color(0xFFCCCFD3),
    fontFamily: 'MonumentExtended',
    fontSize: 12,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    borderSide: BorderSide.none,
  ),
);
