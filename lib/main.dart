import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/enter/login_screen.dart';
import 'screens/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'Email and password login',
        theme: ThemeData(
            primarySwatch: Colors.deepPurple,
        ),
        home: WelcomeScreen(),
    );
  }
}