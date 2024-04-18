import 'package:academic_tracker_app/Widgets/CustomAppBar.dart';
import 'package:academic_tracker_app/Widgets/courses_card.dart';
import 'package:flutter/material.dart';

import '../Widgets/CustomBottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Example data for the grid of courses
  final List<Map<String, String>> courses = [
    {"grade": "A+", "title": "COMP2402"},
    {"grade": "A-", "title": "PSYC1001"},
    {"grade": "A", "title": "COMP2402"},
    {"grade": "B-", "title": "PSYC1001"},
    {"grade": "C+", "title": "COMP2402"},
    {"grade": "C", "title": "PSYC1001"},
    {"grade": "A", "title": "COMP2402"},
    {"grade": "A-", "title": "PSYC1001"},
    {"grade": "A+", "title": "COMP2402"},
    {"grade": "D", "title": "PSYC1001"},
    {"grade": "C", "title": "COMP2402"},
    // Add more course data here...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF525252),
        body: Column(
          children: [
            const CustomAppBar(title: "Academic Tracker"),
            Expanded(
              // Use Expanded to fill the remaining space with the GridView
              child: GridView.builder(
                padding: const EdgeInsets.only(top: 20, left: 33, right: 33),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 40,
                  mainAxisSpacing: 10,
                  childAspectRatio:
                      (130 / 100), // Adjusted based on your CourseCard size
                ),
                itemCount: courses.length, // Number of total items in the grid
                itemBuilder: (context, index) {
                  return CourseCard(
                    grade: courses[index]["grade"]!,
                    title: courses[index]["title"]!,
                    inProgress: false,
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/add_course_page',
            );
          },
          backgroundColor: Color(0xFFCB0000),
          child: const Icon(
            Icons.add,
            color: Color(0xFF525252),
          ),
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: 0,
        ));
  }
}
