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
            'AUTO BAAZAR',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Icon(Icons.dehaze_outlined),
        )],
      ),
    );
  }
}
