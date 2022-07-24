import 'package:flutter/material.dart';
import 'package:campusacademy_app/screens/reset_password_screen.dart';
import 'package:lottie/lottie.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

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
                LottieBuilder.asset("assets/animations/enter-otp.json"),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Enter OTP",
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
                      "A 6 digit code has been sent to your email",
                      style: TextStyle(
                        color: Color(0xFF5C5C5C),
                      ),
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "OTP",
                    icon: Icon(
                      Icons.password,
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
                        builder: (context) => const ResetPasswordScreen(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  color: const Color.fromARGB(255, 25, 146, 246),
                  textColor: Colors.white,
                  child: const Text(
                    "Change Password",
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
