import 'package:flutter/material.dart';
import 'package:uventoui/screens/Onboarding/onboarding_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color(0xff102733),
        accentColor: Color(0xff152F3E),
        cardColor: Color(0xff29404E),
        primaryColor: Color(0xffFCCD00),
      ),
      home: SafeArea(child: Onboarding()),
    );
  }
}
