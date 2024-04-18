import 'package:flutter/material.dart';

class CustomBackground extends StatelessWidget {
  final Widget child;

  CustomBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xFF000000), // #000
            const Color(0xFF000000).withOpacity(0.96),
            const Color(0xFF271F1F).withOpacity(0.62),
            const Color(0xFF493B3B).withOpacity(0.20),
          ],
          stops: const [0.0, 0.2188, 0.9999, 1.0],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      child: child,
    );
  }
}
