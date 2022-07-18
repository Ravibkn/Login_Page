// ignore_for_file: prefer_const_constructors

import 'package:first_work/login_signup_screen.dart';
import 'package:first_work/sidebar_layout.dart';
// import 'package:first_work/login_signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login_Signup UI",
      home: SidebarLayOut(),
    );
  }
}
