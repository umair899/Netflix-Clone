import 'package:flutter/material.dart';

class search extends StatelessWidget {
  const search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Search Screen',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),),
      ),
    );
  }
}