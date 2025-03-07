import 'package:animacao/screens/home/home_screen.dart';
import 'package:animacao/screens/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Animação",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
