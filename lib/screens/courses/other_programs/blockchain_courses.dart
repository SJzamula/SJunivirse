import 'package:flutter/material.dart';
import 'destination_model_o.dart';
import 'destination_screen_o.dart';

class BlockchainCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Інші курси',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () => print('See All'),
                child: Icon(Icons.arrow_forward_sharp,
                color: Colors.blue),
              ),
            ],
          ),
        ),
        Container(
          height: 260.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              DestinationCourses destination = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DestinationCoursesScreen(
                      destination: destination,
                    ),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 20,
                    right: 10,
                    top: 16,
                  ),
                  width: 170.0,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Positioned(
                        bottom: 40.0,
                        child: Container(
                          height: 120.0,
                          width: 178.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(
                                  destination.description,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            Hero(
                              tag: destination.imageUrl,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 140.0,
                                  width: 180.0,
                                  image: AssetImage(destination.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
