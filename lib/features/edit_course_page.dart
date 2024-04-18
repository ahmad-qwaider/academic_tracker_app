import 'package:academic_tracker_app/Widgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

class EditCoursePage extends StatefulWidget {
  final String title;
  const EditCoursePage({super.key, this.title = "Add Course"});

  @override
  State<EditCoursePage> createState() => _EditCoursePageState();
}

class _EditCoursePageState extends State<EditCoursePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF525252),
      body: Column(
        children: [
          CustomAppBar(title: widget.title, isEditPage: true,),
        ],
      ),

    );
  }
}
