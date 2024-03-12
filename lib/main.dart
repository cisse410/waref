import 'package:flutter/material.dart';
import 'package:waref/pages/home.dart';

void main() => runApp(const HomeApp());

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Times New Roman',
      ),
      home: const HomePage()
    );
  }
}
