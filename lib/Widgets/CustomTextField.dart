import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final TextEditingController controller;
  final String hintText;
  final bool isPasswordField;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    required this.hintText,
    this.isPasswordField = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.87,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.labelText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: SizedBox(
                height: 48,
                child: TextField(
                  controller: widget.controller,
                  obscureText: widget.isPasswordField && !passwordVisible,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 14,
                    ),
                    hintText: widget.hintText,
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: widget.isPasswordField ? IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    ) : null,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
