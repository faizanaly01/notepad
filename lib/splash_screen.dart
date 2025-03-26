import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import 'home screen.dart';
import 'login/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black26,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 80,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('assets/faizan123.webp'),
            ),
          ),
          SizedBox(height: 15),
          Text(
            "LuxuryLane",
            style: GoogleFonts.quando(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color:Colors.white),
            ),
          ), Text(
            "by faizan",
            style: GoogleFonts.kaushanScript(
              textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
