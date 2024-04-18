import 'package:flutter/material.dart';

import '../Widgets/CustomAppBar.dart';
import '../Widgets/CustomBottomNavBar.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF525252),
      body: const Column(
        children: [
          CustomAppBar(title: "Account",),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: 2,
      ),
    );
  }
}
