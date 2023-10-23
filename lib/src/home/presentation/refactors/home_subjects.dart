import 'package:tunceducation/src/course/domain/entities/course.dart';
import 'package:tunceducation/core/common/widgets/course_tile.dart';
import 'package:tunceducation/core/extensions/context_extension.dart';
import 'package:tunceducation/core/res/res.dart';

import 'package:tunceducation/src/course/presentation/views/all_courses_view.dart';
import 'package:tunceducation/src/course/presentation/views/course_details_screen.dart';
import 'package:tunceducation/src/home/presentation/widgets/section_header.dart';
import 'package:flutter/material.dart';

class HomeSubjects extends StatelessWidget {
  const HomeSubjects({required this.courses, super.key});

  final List<Course> courses;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(
          sectionTitle: 'Courses',
          seeAll: courses.length > 4,
          onSeeAll: () => context.push(AllCoursesView(courses)),
        ),
        const Text(
          'Explore our courses',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colours.neutralTextColour,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: courses
              .take(4)
              .map(
                (course) => CourseTile(
                  course: course,
                  onTap: () => Navigator.of(context).pushNamed(
                    CourseDetailsScreen.routeName,
                    arguments: course,
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}