import 'package:flutter/material.dart';
import 'package:together/homepagePackage/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Color(0xFF5a8fbb),
        primaryColor: Color(0xFF5a8fbb),
      ),
      home: HomePage(),
    );
  }
}
