import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:campusacademy_app/screens/login_screen.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.asset('assets/logo.png'),
      title: const Text(
        "Campus Academy",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.grey.shade400,
      showLoader: true,
      loadingText: const Text("Loading..."),
      navigator: const LoginScreen(),
      durationInSeconds: 5,
    );
  }
}

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
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Color(0xff7174d0),
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
