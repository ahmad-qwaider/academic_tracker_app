import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final double screenWidth;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.screenWidth,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.93,
      height: 54,
      child: MaterialButton(
        onPressed: onPressed,
        color: const Color(0xFFCB0000),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
