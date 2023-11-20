import 'package:flutter/material.dart';
import 'package:flutter_app/components/colors.dart';
import 'package:flutter_app/my_courses/category_details.dart';
import 'package:flutter_app/screens/course.dart';
import 'package:flutter_app/screens/courses.dart';
import 'package:flutter_app/screens/viewcoursepage.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  final controller = TextEditingController();
  List<Course> courses = categories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Course Title',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.blue))),
            onChanged: searchCourse,
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                final course = courses[index];

                return ListTile(
                  leading: Image.network(
                    course.urlImage,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  title: Text(course.title),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => viewCoursePage(course: course)),
                  ),
                );
              }),
        )
      ],
    ));
  }

  void searchCourse(String query) {
    final sugguestions = categories.where((course) {
      final courseTitle = course.title.toLowerCase();
      final input = query.toLowerCase();

      return courseTitle.contains(input);
    }).toList();

    setState(() => courses = sugguestions);
  }
}
