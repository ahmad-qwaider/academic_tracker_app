import 'package:academic_tracker_app/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;

  CustomBottomNavBar({required this.selectedIndex});

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xFFD9D9D9),
      height: 60,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _navItem(
            index: 0,
            iconSelected: ImageConstant.imgHomeBlack,
            iconUnselected: ImageConstant.imgHome,
          ),
          _navItem(
            index: 1,
            iconSelected: ImageConstant.imgGpaBlack,
            iconUnselected: ImageConstant.imgGpa,
          ),
          _navItem(
            index: 2,
            iconSelected: ImageConstant.imgAccountBlack,
            iconUnselected: ImageConstant.imgAccount,
          ),
        ],
      ),
    );
  }

  Widget _navItem(
      {required int index,
      required String iconSelected,
      required String iconUnselected}) {
    return InkWell(
      onTap: () {
        _onItemTapped(index);
        final String path;
        if (index == 0) {
          path = '/home_page';
        } else if (index == 1) {
          path = '/gpa_page';
        } else {
          path = '/account_page';
        }
        Navigator.popAndPushNamed(
          context,
          path,
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            _selectedIndex == index ? iconSelected : iconUnselected,
            height: 30,
            width: 30,
          ),
        ],
      ),
    );
  }
}
