import 'dart:async';
import 'package:flutter/material.dart';

import '../intro_pages/onboarding_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 2000),
          () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('lib/assets/startApp.png'),
      ),
    );
  }
}
