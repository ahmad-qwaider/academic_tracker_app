import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blur/blur.dart';

class CourseCard extends StatelessWidget {
  final String grade;
  final String title;
  final bool inProgress;

  CourseCard({
    super.key,
    required this.grade,
    required this.title,
    this.inProgress = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget gradeText = Text(
      grade,
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 28.0,
        fontStyle: FontStyle.italic,
        color: Colors.black,
        shadows: <Shadow>[
          Shadow(
            offset: const Offset(0, 3.5),
            blurRadius: 5.0,
            color: Colors.black.withOpacity(0.20),
          ),
        ],
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 9.0),
      child: Stack(
        children: [
          Container(
            height: 100,
            width: 140,
            decoration: BoxDecoration(
              color: const Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: inProgress ? gradeText.blurred(
                      borderRadius: BorderRadius.circular(10.0),
                      blur: 2.0,
                      overlay: Container(),
                    ) : gradeText,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 20.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 17.0,
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        shadows: <Shadow>[
                          Shadow(
                            offset: const Offset(0, 3.5),
                            blurRadius: 5.0,
                            color: Colors.black.withOpacity(0.20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/edit_course_page',
                );
              },
              child: SvgPicture.asset(
                'assets/images/icons8-edit.svg',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
