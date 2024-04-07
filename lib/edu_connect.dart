import 'package:edu_connect/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class EduConnect extends StatefulWidget {
  const EduConnect({super.key});

  @override
  State<EduConnect> createState() => _EduConnectState();
}

class _EduConnectState extends State<EduConnect> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Color.fromRGBO(255, 255, 255, 1),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}