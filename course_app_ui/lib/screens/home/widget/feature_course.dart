import 'package:course_app/models/course.dart';
import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:course_app/screens/home/widget/course_item.dart';
import 'package:flutter/material.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the week', 'view all'),
          Container(
              height: 300,
              child: ListView.separated(
                padding: EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: coursesList.length,
                itemBuilder: (context, index) => CourseItem(coursesList[index]),
                separatorBuilder: (context, index) => SizedBox(width: 15),
              ))
        ],
      ),
    );
  }
}
