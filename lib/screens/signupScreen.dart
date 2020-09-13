import 'package:auth_ui/widgets/alreadyHaveAnAccountCheck.dart';
import 'package:auth_ui/widgets/orDivider.dart';
import 'package:auth_ui/widgets/roundedButton.dart';
import 'package:auth_ui/widgets/roundedInputField.dart';
import 'package:auth_ui/widgets/roundedPasswordField.dart';
import 'package:auth_ui/widgets/socalIcon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'loginScreen.dart';

class SignUpScreen extends StatelessWidget {
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
              top: 0,
              left: 0,
              child: Image.asset(
                "assets/images/signup_top.png",
                width: mediaQuery.width * 0.35,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/main_bottom.png",
                width: mediaQuery.width * 0.25,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "SIGNUP",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: mediaQuery.height * 0.03),
                  SvgPicture.asset(
                    "assets/icons/signup.svg",
                    height: mediaQuery.height * 0.35,
                  ),
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value){},
                  ),
                  RoundedPasswordField(
                    hintText: "Password",
                    onChanged: (value){},
                  ),
                  RoundedButton(
                    text: "SIGNUP",
                    press: () {},
                  ),
                  SizedBox(height: mediaQuery.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    login: false,
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
                  OrDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SocalIcon(
                        iconSrc: "assets/icons/facebook.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/twitter.svg",
                        press: () {},
                      ),
                      SocalIcon(
                        iconSrc: "assets/icons/google-plus.svg",
                        press: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
