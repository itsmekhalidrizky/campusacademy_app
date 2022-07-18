import 'package:flutter/material.dart';
import 'package:campusacademy_app/screens/forgot_password_screen.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Column(
              children: <Widget>[
                LottieBuilder.asset("assets/animations/user-profile.json"),
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    icon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                  ),
                ),
                const TextField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: "Password",
                    icon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color(0xFF6E50F5),
                      ),
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                  color: const Color.fromARGB(255, 25, 146, 246),
                  textColor: Colors.white,
                  child: const Text(
                    "Sign In",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
