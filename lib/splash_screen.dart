import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import './login_screen.dart';
import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // It runs before the state object is created.
    // It runs before the build method.
    super.initState();
    // print("It runs before the state object is created.");
    _isLogin();
  }

  void _isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false; // getBool returns true
    // or false not null.

    if (isLogin) {
      Timer(const Duration(seconds: 5), () {
        // print("In the timer.");
        Navigator.pushNamed(
          context,
          HomeScreen.routeName,
        );
      });
    } else {
      Timer(const Duration(seconds: 5), () {
        // print("In the timer.");
        Navigator.pushNamed(
          context,
          LoginScreen.routeName,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // It keeps building during initState(){}.
    // print("It runs after the state object is created.");
    return const Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight, // takes all the available height as space.
          image: NetworkImage(
              "https://images.pexels.com/photos/3434523/pexels-photo-3434523.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")),
    );
  }
}