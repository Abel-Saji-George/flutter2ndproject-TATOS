import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newpro/screens/armchairs.dart';
import 'package:newpro/screens/livingroom.dart';
import 'package:newpro/screens/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LivingRoom(),
    );
  }
}
