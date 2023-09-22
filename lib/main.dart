import 'package:example/screens/counter.dart';
import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/registr.dart';
import 'screens/login.dart';
import 'screens/home.dart';
// import 'screens/exam.dart';
import 'screens/quiz.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
 const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      // home: counterScreen(),
      home: homeScreen(),
      // home: example(),
    );
  }
}