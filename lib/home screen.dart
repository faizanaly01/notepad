import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Well_come ',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [Icon(Icons.dehaze_outlined)],
      ), 
      body: Column(
        children: [Container(color: Colors.red, height: 34, width: 23)],
      ),
    );
  }
}


























