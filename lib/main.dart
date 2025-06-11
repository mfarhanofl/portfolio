import 'package:flutter/material.dart';
import 'package:project_lohar/home_page.dart';
import 'package:project_lohar/imgae_slider.dart';
import 'package:project_lohar/started_screen.dart';

import 'about_screen.dart';
import 'bottom_nav_bar.dart';
import 'contact_screen.dart';


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
      home: StartedScreen(),
    );
  }
}
