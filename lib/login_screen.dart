import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  // Shared Prefs also waits to get desired value.

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
              onTap: () async {
                SharedPreferences sp = await SharedPreferences.getInstance();
                // You store value value with respect to its key and similarly
                // read value with respect to its key.
                sp.setString('Name', "Usama Irshad");
                sp.setInt("Age", 21);
                sp.setBool('isLogin', false);

                print(sp.getString('Name'));
                print(sp.getInt('Age').toString());
                print(sp.getBool('isLogin'));

                sp.remove('Name');
                print(sp.getString('Name'));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                    child: Text(
                  "Click",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
