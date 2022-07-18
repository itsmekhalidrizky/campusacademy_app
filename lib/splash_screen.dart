import 'dart:async';
import 'package:flutter/material.dart';
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
    var splashDuration = const Duration(seconds: 6);

    return Timer(splashDuration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return const WelcomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 330,
          height: 155,
        ),
      ),
    );
  }
}
