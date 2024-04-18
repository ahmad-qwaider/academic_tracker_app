import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final bool isEditPage;
  const CustomAppBar({
    super.key,
    required this.title,
    this.isEditPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 25.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            if(isEditPage)...[
              Positioned(
                left: 15,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset(
                    'assets/images/back_icon.svg',
                  ),
                ),
              ),
              Positioned(
                right: 15,
                child: InkWell(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset(
                    'assets/images/checkmark.svg',
                  ),
                ),
              ),
            ],
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 27,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w100,
                color: Color(0xFFCB0000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
