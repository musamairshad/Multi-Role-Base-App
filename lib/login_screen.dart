import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login-screen";
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Future<void> usamaIrshad() async {
  //   await Future.delayed(Duration(seconds: 3));
  //   print("delayed.");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                // usamaIrshad();
              },
              child: Container(
                height: 50,
                width: double.infinity,
                color: Colors.green,
                child: Center(child: Text("Click")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
