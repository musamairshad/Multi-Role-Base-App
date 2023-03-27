import 'package:flutter/material.dart';
import './home_screen.dart';
import './splash_screen.dart';
import './login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HomeScreen.routeName : (ctx) => const HomeScreen(),
        LoginScreen.routeName : (ctx) => const LoginScreen(),
      },
      home: const SplashScreen(),
    );
  }
}