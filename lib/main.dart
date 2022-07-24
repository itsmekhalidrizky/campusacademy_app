import 'package:campusacademy_app/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const CampusAcademyApp());
}

class CampusAcademyApp extends StatelessWidget {
  const CampusAcademyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Academy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color.fromARGB(0, 168, 196, 98),
            statusBarIconBrightness: Brightness.dark,
          ),
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          iconTheme: IconThemeData(color: Color.fromARGB(252, 7, 46, 79)),
        ),
      ),
      home: const SplashScreenPage(),
    );
  }
}
