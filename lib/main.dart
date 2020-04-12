import 'package:covidtracker/home_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(CovidTracker());

class CovidTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0E0F20),
        scaffoldBackgroundColor: Color(0xFF0E0F20),
      ),
      home: HomePage(),
    );
  }
}
