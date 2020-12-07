import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginsignuppage/Screens/Login/login_screen.dart';
import 'package:loginsignuppage/Screens/SignUp/signup_screen.dart';
import 'package:loginsignuppage/Screens/Welcome/components/background.dart';
import 'package:loginsignuppage/components/rounded_button.dart';
import 'package:loginsignuppage/constans.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //This size provides us total size and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: 'LOGIN',
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
              text: 'SIGN UP',
              textColor: Colors.black,
              color: kPrimaryLightColor,
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
            SizedBox(
              height: size.height * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
