import 'package:flutter/material.dart';

class TitleMyCurses extends StatelessWidget {
  const TitleMyCurses({
    Key? key, required this.title, required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.symmetric(horizontal: 16, ),

      child: Row(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only( left: 4.0, top: 50, bottom: 40),
            child: Text(
              'Мої курси',
              style: TextStyle(fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]
      ),
    );
  }
}

