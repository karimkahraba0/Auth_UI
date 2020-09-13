import 'package:auth_ui/screens/loginScreen.dart';
import 'package:auth_ui/screens/signupScreen.dart';
import 'package:auth_ui/widgets/roundedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: mediaQuery.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset('assets/images/main_top.png',
                  width: mediaQuery.width * 0.3),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset('assets/images/main_bottom.png',
                  width: mediaQuery.width * 0.2),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Welcome to EDU',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: mediaQuery.height * 0.05),
                SvgPicture.asset(
                  'assets/icons/chat.svg',
                  height: mediaQuery.height * 0.45,
                ),
                SizedBox(height: mediaQuery.height * 0.05),
                RoundedButton(
                  text: "LOGIN",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  },
                ),
                RoundedButton(
                  text: "SIGN UP",
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
