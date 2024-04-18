import 'package:academic_tracker_app/Widgets/CustomBackground.dart';
import 'package:academic_tracker_app/AuthPages/forget_password_screen.dart';
import 'package:academic_tracker_app/AuthPages/login_screen.dart';
import 'package:academic_tracker_app/Widgets/logo.dart';
import 'package:academic_tracker_app/main.dart';
import 'package:academic_tracker_app/AuthPages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackground(
        child: const Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
            children: [
              LogoWidget(),
              Padding(
                padding: EdgeInsets.only(top: 25.0),
                child: Text(
                  "Track Your Progress",
                  style: TextStyle(
                      fontSize: 27,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w100,
                      color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
