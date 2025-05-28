import 'package:qr_menu/screens/home_screen.dart';
import 'package:qr_menu/screens/makarna_menu.dart';
import 'package:flutter/material.dart';
import 'package:qr_menu/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AL GRANDE MAKARNA&LAZANYA MENÜ',
      home: SplashScreen(),
    );
  }
}
