import 'package:flutter/material.dart';
import 'package:flutter_app/screens/course.dart';
import 'package:flutter_app/screens/viewcoursepage.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SearchPage extends StatefulWidget {
  @override
  State<SearchPage> createState() => _SearchPage();
}

class _SearchPage extends State<SearchPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.all(16),
        child: TypeAheadField<Course?>(
          // hideSuggestionsOnKeyboardHide: false,
          debounceDuration: Duration(milliseconds: 500),
          textFieldConfiguration: TextFieldConfiguration(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Search Course',
            ),
          ),
          suggestionsCallback: CourseApi.getCourseSuggestions,
          itemBuilder: (context, Course? suggestion) {
            final course = suggestion!;

            return ListTile(
              leading: Container(
                  height: 50,
                  width: 50,
                  child: Image.network(
                    course.urlImage,
                    fit: BoxFit.cover,
                  )),
              title: Text(course.title),
            );
          },
          noItemsFoundBuilder: (context) => Container(
              height: 100,
              child: Center(
                child: Text(
                  'No Courses Found',
                  style: TextStyle(fontSize: 14),
                ),
              )),
          onSuggestionSelected: (Course? suggestion) {
            final course = suggestion!;

            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => viewCoursePage(course: course)));
          },
        ),
      ),
    ));
  }
}
