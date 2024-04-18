import 'package:flutter/material.dart';

import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomBottomNavBar.dart';

class GPAPage extends StatelessWidget {
  const GPAPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF525252),
      body: const Column(
        children: [
          CustomAppBar(title: "GPA",),
        ],
      ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: 1,
        ),
    );
  }
}
