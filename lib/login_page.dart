import 'package:albumm/google_sign_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      color: Colors.black87,
      child: Column(
        children: <Widget>[
          const Spacer(),
          SizedBox(
            width: 200,
            height: 200,
            child: Image.asset("imagens/crflogo.png"),
          ),
          const SizedBox(height: 50),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size(300, 50)),
              icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);
                provider.googleLogin();
              },
              label: const Text('Sign Up with Google')),
          const SizedBox(height: 40),
          RichText(
              text: const TextSpan(text: 'Already have an account?', children: [
            TextSpan(
                text: 'Log in',
                style: TextStyle(decoration: TextDecoration.underline)),
          ])),
          // ignore: prefer_const_constructors
          Spacer(),
        ],
      ),
    ));
  }
}
