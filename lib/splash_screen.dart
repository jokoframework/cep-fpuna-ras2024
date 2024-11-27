import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

import 'dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final List<String> _images = [
    'https://source.unsplash.com/random/800x600',
    'https://picsum.photos/800/600',
    'https://loremflickr.com/800/600',
  ];

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => DashboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final randomImage = _images[Random().nextInt(_images.length)];
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            randomImage,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black54,
            child: Center(
              child: Text(
                'Quiero llegar al verano',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}