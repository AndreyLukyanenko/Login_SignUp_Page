import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loginsignuppage/Screens/Login/login_screen.dart';
import 'package:loginsignuppage/Screens/SignUp/components/background.dart';
import 'package:loginsignuppage/Screens/SignUp/components/or_divider.dart';
import 'package:loginsignuppage/components/already_have_an_account_acheck.dart';
import 'package:loginsignuppage/components/rounded_button.dart';
import 'package:loginsignuppage/components/rounded_input_fields.dart';
import 'package:loginsignuppage/components/rounded_password-field.dart';
import 'package:loginsignuppage/components/social_items.dart';

class Body extends StatelessWidget {
  final Widget child;

  const Body({
    Key key,
    @required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SIGN UP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGN UP',
              press: () {},
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            AlreadyHeaveAnAccountCheck(
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
              children: [
                SocialIcons(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocialIcons(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocialIcons(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
