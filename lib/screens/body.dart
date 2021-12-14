import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'courses/other_programs/blockchain_courses.dart';
import 'courses/principle/principle_courses.dart';
import 'courses/title_my_courses.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[

          TitleMyCurses(title: "My courses", press: () {}),
          // TitleWithMoreBtn(title: "Theology", press: () {}),
          PrincipleCourses(),
          // TitleWithMoreBtn(title: "Languages", press: () {}),
          BlockchainCourses(),
          // TitleWithMoreBtn(title: "Programming", press: () {}),
        ],
      ),
    );
  }
}