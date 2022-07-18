import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:campusacademy_app/constants.dart';
import 'package:campusacademy_app/screens/screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 251, 251),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        child: Image(
                          image: AssetImage('assets/logo.png'),
                          width: 180,
                          height: 180,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        "Bring together your files, your tools, project and people.Including a new mobile and desktop application.",
                        style: kBodyText,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120,
                child: Column(
                  children: [
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const SignupScreen(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      color: const Color.fromARGB(255, 255, 255, 255),
                      textColor: const Color.fromARGB(255, 25, 146, 246),
                      child: const Text(
                        "Sign Up",
                      ),
                    ),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const LoginScreen(),
                            ));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      color: const Color.fromARGB(255, 25, 146, 246),
                      textColor: const Color.fromARGB(255, 255, 255, 255),
                      child: const Text(
                        "Sign In",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
