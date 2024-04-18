import 'package:academic_tracker_app/Widgets/CustomBackground.dart';
import 'package:academic_tracker_app/Widgets/logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomBackground(
        child: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              const LogoWidget(),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: CustomTextField(
                  labelText: 'Username',
                  controller: _userNameController,
                  hintText: 'e.g. fla3443h',
                ),
              ),
              SizedBox(
                width: screenWidth * 0.87,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 14.0),
                      child: CustomTextField(
                        labelText: 'Password',
                        controller: _passwordController,
                        hintText: 'e.g. ncis38MNQ@',
                        isPasswordField: true,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {Navigator.of(context).pushNamed('/forget_password');},
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 22.0),
                          child: Text(
                            'Forget password?',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFCB0000)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                buttonText: "LOGIN",
                screenWidth: screenWidth,
                onPressed: () {Navigator.of(context).pushReplacementNamed('/home_page');
                },
              ),
              const SizedBox(
                height: 160,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 14),
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Don't have an account? ",
                      style: TextStyle(color: Colors.white70),
                    ),
                    TextSpan(
                      text: "Signup",
                      style: const TextStyle(
                        color: Color(0xFFCB0000),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
