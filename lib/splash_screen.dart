import 'dart:async';
import 'package:flutter/material.dart';
import 'package:campusacademy_app/constants.dart';
import 'package:campusacademy_app/screens/welcome_screen.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    var splashDuration = const Duration(seconds: 10);

    return Timer(splashDuration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const WelcomePage();
      }));
    });
  }

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
                  children: const [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        child: Image(
                          image: AssetImage('assets/logo.png'),
                          width: 230,
                          height: 230,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: const [
                  SizedBox(
                    child: Text(
                      "Official Partner :",
                      style: kBodyText,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/logo_digitalent.png'),
                      width: 55,
                      height: 55,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/logo_tokped.png'),
                      width: 65,
                      height: 65,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Image(
                      image: AssetImage('assets/logo_kampus_merdeka.png'),
                      width: 65,
                      height: 65,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
