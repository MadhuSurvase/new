import 'package:flutter/material.dart';

import 'Login.dart';
//import 'package:loginpage/HomePage.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key?key}) :super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.lightGreen,
      ),
      home:LoginPage(),
    );
    }
}



