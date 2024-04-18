import 'package:academic_tracker_app/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      alignment: Alignment.center,
      children: <Widget>[
        SvgPicture.asset(ImageConstant.imgRaven),
        SvgPicture.asset(ImageConstant.imgAppIcon),
      ],
    );
  }
}
