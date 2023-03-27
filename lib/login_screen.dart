import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './home_screen.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = "/login-screen";

  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Future<void> usamaIrshad() async {
  //   await Future.delayed(Duration(seconds: 3));
  //   print("delayed.");
  // }

  // Shared Prefs also waits to get desired value.

  // final formData = GlobalKey<FormState>(); // Not a good idea to impliment
  // in that way.

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
              ),
              controller: _emailController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
              controller: _passwordController,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Age',
              ),
              controller: _ageController,
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () async {
                // SharedPreferences sp = await SharedPreferences.getInstance();
                // // You store value value with respect to its key and similarly
                // // read value with respect to its key.
                // sp.setString('Name', "Usama Irshad");
                // sp.setInt("Age", 21);
                // sp.setBool('isLogin', false);

                // print(sp.getString('Name'));
                // print(sp.getInt('Age').toString());
                // print(sp.getBool('isLogin'));

                // sp.remove('Name');
                // print(sp.getString('Name'));

                // Not a good idea to store password.

                SharedPreferences sp = await SharedPreferences.getInstance();
                sp.setString('Email', _emailController.text.toString());
                sp.setString('Age', _ageController.text.toString());
                sp.setBool('isLogin', true); // When button is pressed so
                // user is logged in and value = true.

                // ignore: use_build_context_synchronously
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              child: Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}