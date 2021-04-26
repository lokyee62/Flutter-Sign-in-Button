import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  /// This is an example app which make use of
  /// `SignInButtonBuilder` and `SignInButton` class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(50, 50, 50, 1.0),
        body: SignInPage(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignInPage extends StatelessWidget {
  /// Show a simple "___ Button Pressed" indicator
  void _showButtonPressDialog(BuildContext context, String provider) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: Duration(milliseconds: 400),
    ));
  }

  /// Normally the signin buttons should be contained in the SignInPage
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SignInButtonBuilder(
            text: 'Get going with Email',
            icon: Icons.email,
            onPressed: () {
              _showButtonPressDialog(context, 'Email');
            },
            backgroundColor: Colors.blueGrey[700]!,
            width: double.infinity,
          ),
          Divider(),
          SignInButton(
            Buttons.Google,
            iconWidth: 40,
            height: 40,
            onPressed: () {
              _showButtonPressDialog(context, 'Google');
            },
            width: double.infinity,
          ),
          Divider(),
          SignInButton(
            Buttons.GoogleDark,
            onPressed: () {
              _showButtonPressDialog(context, 'Google (dark)');
            },
          ),
          Divider(),
          SignInButton(
            Buttons.FacebookSquare,
            onPressed: () {
              _showButtonPressDialog(context, 'FacebookNew');
            },
            width: double.infinity,
          ),
          Divider(),
          SignInButton(
            Buttons.Apple,
            iconSize: 20,
            onPressed: () {
              _showButtonPressDialog(context, 'Apple');
            },
          ),
          Divider(),
          SignInButton(
            Buttons.GitHub,
            text: "Sign up with GitHub",
            onPressed: () {
              _showButtonPressDialog(context, 'Github');
            },
          ),
          Divider(),
          SignInButton(
            Buttons.Microsoft,
            text: "Sign up with Microsoft ",
            onPressed: () {
              _showButtonPressDialog(context, 'Microsoft ');
            },
          ),
          Divider(),
          SignInButton(
            Buttons.Twitter,
            text: "Use Twitter",
            onPressed: () {
              _showButtonPressDialog(context, 'Twitter');
            },
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SignInButton(
                Buttons.LinkedIn,
                mini: true,
                width: 35,
                onPressed: () {
                  _showButtonPressDialog(context, 'LinkedIn (mini)');
                },
              ),
              SignInButton(
                Buttons.Tumblr,
                mini: true,
                width: 35,
                onPressed: () {
                  _showButtonPressDialog(context, 'Tumblr (mini)');
                },
              ),
              SignInButton(
                Buttons.Facebook,
                mini: true,
                width: 35,
                onPressed: () {
                  _showButtonPressDialog(context, 'Facebook (mini)');
                },
              ),
              SignInButtonBuilder(
                icon: Icons.email,
                text: "Ignored for mini button",
                mini: true,
                width: 35,
                onPressed: () {
                  _showButtonPressDialog(context, 'Email (mini)');
                },
                backgroundColor: Colors.cyan,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
