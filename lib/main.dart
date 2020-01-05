import 'package:bmindex_app/pages/input_page.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E33),
        accentColor: Color(0xFFEB1355),
        scaffoldBackgroundColor: Color(0xFF0A0E33),
      ),
      home: InputDataPage(),
    );
  }
}