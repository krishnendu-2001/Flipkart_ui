import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/bottom_nav.dart';

void main(List<String> args) {
  // MaterialApp MyApp=MaterialApp(title: 'flipkartt',)
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottomnav(),
    );
  }
}
