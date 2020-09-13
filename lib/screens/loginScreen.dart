import 'package:auth_ui/screens/signupScreen.dart';
import 'package:auth_ui/widgets/alreadyHaveAnAccountCheck.dart';
import 'package:auth_ui/widgets/roundedButton.dart';
import 'package:auth_ui/widgets/roundedInputField.dart';
import 'package:auth_ui/widgets/roundedPasswordField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
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
              child: Image.asset('assets/images/main_top.png',
                  width: mediaQuery.width * 0.35),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset('assets/images/login_bottom.png',
                  width: mediaQuery.width * 0.4),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: mediaQuery.height * 0.03),
                  SvgPicture.asset(
                    'assets/icons/login.svg',
                    height: mediaQuery.height * 0.35,
                  ),
                  SizedBox(height: mediaQuery.height * 0.03),
                  RoundedInputField(
                    hintText: "Your Email",
                    onChanged: (value){},
                  ),
                  RoundedPasswordField(
                    hintText: "Password",
                    onChanged: (value){},
                  ),
                  RoundedButton(
                    text: "LOGIN",
                    press: () {},
                  ),
                  SizedBox(height: mediaQuery.height * 0.03),
                  AlreadyHaveAnAccountCheck(
                    press: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                        },
                      ));
                    },
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
