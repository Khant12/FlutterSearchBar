import 'dart:convert';

import 'package:flutter/services.dart';

class Course {
  final String title;
  final String urlImage;

  const Course({
    required this.title,
    required this.urlImage,
  });

  static Course fromJson(Map<String, dynamic> json) =>
      Course(title: json['title'], urlImage: json['urlImage']);
}

class CourseApi {
  static Future<List<Course>> getCourseSuggestions(String query) async {
    final String response = await rootBundle.loadString('assets/courses.json');
    final List courses = await json.decode(response);

    return courses.map((json) => Course.fromJson(json)).where((course) {
      final nameLower = course.title.toLowerCase();
      final queryLower = query.toLowerCase();

      return nameLower.contains(queryLower);
    }).toList();
  }
}
