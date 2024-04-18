import 'package:academic_tracker_app/Widgets/CustomBackground.dart';
import 'package:academic_tracker_app/Widgets/logo.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
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
                height: 90,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: CustomTextField(
                  labelText: 'Enter your E-mail',
                  controller: _emailController,
                  hintText: 'e.g. michael299@gmail.com',
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              CustomButton(
                buttonText: "Reset Password",
                screenWidth: screenWidth,
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
              ),
              const SizedBox(
                height: 195,
              ),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 14),
                  children: <TextSpan>[
                    const TextSpan(
                      text: "Back to ",
                      style: TextStyle(
                        color: Colors.white70,
                      ),
                    ),
                    TextSpan(
                      text: "Login",
                      style: const TextStyle(
                        color: Color(0xFFCB0000),
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {Navigator.of(context).pushNamed('/login');},
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
