import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sjuniverse/screens/profile/profile.dart';
import 'body.dart';

class HomeScreen extends  StatefulWidget {

 @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<HomeScreen>{
final List<Widget> _children = [
  Body(),
  Profile()
];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[

      Icon(Icons.home, size: 30,),
      Icon(Icons.assessment_outlined, size: 30,),
      // Icon(Icons.book_outlined, size: 30,),
      // Icon(Icons.settings, size: 30,),
      // Icon(Icons.person, size: 30,)
    ];


    return Scaffold(

      body: _children[index],
      bottomNavigationBar: CurvedNavigationBar(
      color: Colors.purple,
      backgroundColor: Colors.white,
    buttonBackgroundColor: Colors.deepPurple,
    height: 50,
    items: items,
        animationDuration: Duration(milliseconds: 200),
        onTap: (int index){
        setState(() {
          this.index = index;
        });

        },
    ),

    );
  }
}