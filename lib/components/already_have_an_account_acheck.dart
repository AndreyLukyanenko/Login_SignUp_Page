import 'package:flutter/material.dart';
import '../constans.dart';

class AlreadyHeaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHeaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't have a Account ? " : "Already have an Account ? ",
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'Sign up' : 'Sign in',
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
