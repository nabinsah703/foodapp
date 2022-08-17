import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/backgroundimage.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Sign in to continue',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Vegi',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.grey,
                      shadows: [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.green.shade900,
                            offset: Offset(3, 3))
                      ],
                    ),
                  ),
                  SignInButton(
                    Buttons.Apple,
                    text: "Sign in with Apple",
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: () {},
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    text: "Sign in with Facebook",
                    onPressed: () {},
                  ),
                  Text(
                    'By signing in you are agreeing to our',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Terms and privacy policy',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
