import 'package:flutter/material.dart';
import 'package:foodie/home.dart';
// import 'package:foodie/mr_cheezy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie',
      theme: ThemeData(
        fontFamily: "Unbounded",
        colorScheme: ColorScheme.light(onPrimaryContainer: Colors.white)
        
      ),
      home: Home(),
      );
  }
}
