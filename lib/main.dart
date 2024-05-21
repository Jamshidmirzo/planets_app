import 'package:flutter/material.dart';
import 'package:planets_app/pages/startpages/startpage.dart';

void main() {
  runApp(Planets());
}

class Planets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Startpage(),
    );
  }
}
