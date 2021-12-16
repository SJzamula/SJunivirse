import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sjuniverse/screens/enter/login_screen.dart';
import 'package:sjuniverse/screens/enter/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  late final Function() onBtnPressed;

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor
            ],
          ),

        ),

        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,

                  ),
                  Image.asset(
                    'assets/images/nwet_words.png',
                    height: 200,
                    width: 300,
                  ),
                  Text(
                    'SJ Universe',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold,color: Colors.white60),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Material(
                    elevation: 5,
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => LoginScreen())),
                      minWidth: 300,
                      height: 50,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 30,
                  ),
                  Material(
                    elevation: 5,
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10),
                    child: MaterialButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => RegistrationScreen())),
                      minWidth: 300,
                      height: 50,
                      child: Text(
                        'Create a new account',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}