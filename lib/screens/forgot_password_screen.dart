import 'package:flutter/material.dart';
import 'package:campusacademy_app/screens/otp_screen.dart';
import 'package:lottie/lottie.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                LottieBuilder.asset("assets/animations/forgot-password.json"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Please enter your email address linked to your account.",
                      style: TextStyle(
                        color: Color(0xFF5C5C5C),
                      ),
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    icon: Icon(
                      Icons.email,
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 25, 146, 246),
                  textColor: Colors.white,
                  child: const Text(
                    "Get OTP",
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
