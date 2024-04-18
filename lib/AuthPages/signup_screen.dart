import 'package:academic_tracker_app/Widgets/CustomBackground.dart';
import 'package:academic_tracker_app/Widgets/logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool passwordVisible=false;
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
                  CustomTextField(
                    labelText: 'Username',
                    controller: _userNameController,
                    hintText: 'e.g. fla3443h',
                  ),
                  CustomTextField(
                    labelText: 'Email Address',
                    controller: _emailController,
                    hintText: 'e.g. michael299@gmail.com',
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    controller: _passwordController,
                    hintText: 'e.g. ncis38MNQ@',
                    isPasswordField: true,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 22.0),
                    child: CustomTextField(
                      labelText: 'Confirm Password',
                      controller: _confirmPasswordController,
                      hintText: 'e.g. ncis38MNQ@',
                      isPasswordField: true,
                    ),
                  ),
                  CustomButton(
                    buttonText: "SIGNUP",
                    screenWidth: screenWidth,
                    onPressed: () {Navigator.of(context).pushNamed('/login');
                    },
                  ),

                  const SizedBox(height: 50,),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(fontSize: 14),
                      children: <TextSpan>[
                        const TextSpan(
                          text: "Already have account? ",
                          style: TextStyle(color: Colors.white70),
                        ),
                        TextSpan(
                          text: "Login",
                          style: const TextStyle(
                            color: Color(0xFFCB0000),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {Navigator.of(context).pushNamed('/login');},
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
