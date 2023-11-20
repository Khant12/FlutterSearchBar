import 'package:flutter/material.dart';
import 'package:flutter_app/components/colors.dart';
import 'package:flutter_app/my_courses/courses_main_page.dart';
import 'package:flutter_app/screens/course.dart';

class viewCoursePage extends StatelessWidget {
  final Course course;

  const viewCoursePage({
    Key? key,
    required this.course,
  }) : super(key: key);

  Widget _buildRecommendationSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommendation',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton(
                onPressed: () {
                  // Handle "See All" button tap
                },
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 240,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                int indexplus = index + 1;
                int indexshuffle = index + 2;
                return CourseCard(
                  courseTitle: 'Course $indexplus',
                  authorName: 'Author Name',
                  imageAssetPath: 'images/CourseIntro$indexshuffle.jpg',
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(course.title),
        backgroundColor: tuDarkBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    course.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle "See All" button tap
                    },
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: 240,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    int indexplus = index + 1;
                    int indexshuffle = index + 3;
                    return CourseCard(
                      courseTitle: 'Course $indexplus',
                      authorName: 'Author Name',
                      imageAssetPath: 'images/CourseIntro$indexshuffle.jpg',
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildRecommendationSection(),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) => Scaffold(
  //       appBar: AppBar(
  //         title: Text(course.title),
  //       ),
  //       body: Image.network(
  //         course.urlImage,
  //         width: double.infinity,
  //         height: 300,
  //         fit: BoxFit.cover,
  //       ),
  //     );
}
