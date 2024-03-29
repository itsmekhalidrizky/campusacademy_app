import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
                LottieBuilder.asset(
                  "assets/animations/make-the-deal.json",
                  height: 200,
                  width: 200,
                ),
                Container(
                  alignment: Alignment.topCenter,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                  ),
                ),
                const TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    icon: Icon(
                      Icons.account_circle_rounded,
                      color: Color.fromARGB(255, 25, 146, 246),
                    ),
                    labelStyle: TextStyle(
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
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    icon: Icon(
                      Icons.phone,
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
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.all(10),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "By signing up you agree to our ",
                          style: TextStyle(
                            color: Color(0xFF5C5C5C),
                          ),
                        ),
                        TextSpan(
                          text: "Terms & Conditions",
                          style: TextStyle(
                            color: Color(0xFF461EF7),
                          ),
                        ),
                      ],
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
                    "Sign Up",
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
