import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:foodapp/auth/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  // sign in with facebook method

  Future<UserCredential> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // Once signed in, return the UserCredential
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }

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
                  const Text(
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
                    onPressed: () {
                      signInWithGoogle().then((value) => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          )));
                    },
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    text: "Sign in with Facebook",
                    onPressed: () {
                      signInWithFacebook().then((value) => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          )));
                    },
                  ),
                  const Text(
                    'By signing in you are agreeing to our',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const Text(
                    'Terms and privacy policy',
                    style: TextStyle(color: Colors.grey),
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
