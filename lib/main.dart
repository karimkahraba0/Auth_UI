import 'package:auth_ui/screens/loginScreen.dart';
import 'package:auth_ui/screens/signupScreen.dart';
import 'package:auth_ui/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}