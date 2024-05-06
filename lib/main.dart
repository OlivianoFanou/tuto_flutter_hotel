import 'package:flutter/material.dart';
import 'package:flutter_booking/home.dart';

const dGreen = Color(0xFF54D3C2);
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
