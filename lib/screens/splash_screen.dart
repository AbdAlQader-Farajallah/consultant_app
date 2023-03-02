import 'dart:async';
import 'package:flutter/material.dart';
import 'login_and_signup.dart';

class SplashPage extends StatefulWidget {
  static const String id = "SplashPage";

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  Duration duration = const Duration(seconds: 2);

  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: duration);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });

    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, LoginAndSignupPage.id),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    height: controller.value * 150,
                    width: controller.value * 150,
                    child: Image.asset('images/icon.png'),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Pal Mail",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF003AFC),
                    fontSize: controller.value * 50,
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
