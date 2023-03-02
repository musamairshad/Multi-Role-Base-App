import 'package:flutter/material.dart';
import 'dart:async';
import './login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // It runs before the state object is created.
    super.initState();
    Timer(Duration(seconds: 5), () {
      // print("In the timer.");
      Navigator.pushNamed(
        context,
        LoginScreen.routeName,
      );
    });
    // print("It runs before the state object is created.");
  }

  @override
  Widget build(BuildContext context) {
    // print("It runs after the state object is created.");
    return Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight, // takes all the available height as space.
          image: NetworkImage(
              "https://images.pexels.com/photos/3434523/pexels-photo-3434523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
    );
  }
}
