import 'package:academic_tracker_app/features/GPA_page.dart';
import 'package:academic_tracker_app/features/account_page.dart';
import 'package:academic_tracker_app/features/edit_course_page.dart';
import 'package:academic_tracker_app/AuthPages/forget_password_screen.dart';
import 'package:academic_tracker_app/features/home_page.dart';
import 'package:academic_tracker_app/AuthPages/login_screen.dart';
import 'package:academic_tracker_app/AuthPages/signup_screen.dart';
import 'package:academic_tracker_app/features/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/signup': (context) => SignUpScreen(),
        '/login': (context) => LoginScreen(),
        '/forget_password': (context) => ForgetPasswordScreen(),
        '/home_page': (context) => const HomePage(),
        '/edit_course_page' : (context) => const EditCoursePage(title: "Edit Course",),
        '/add_course_page' : (context) => const EditCoursePage(),
        '/gpa_page' : (context) => const GPAPage(),
        '/account_page' : (context) => const AccountPage(),

      },// Your SplashScreen widget
    );
  }
}


