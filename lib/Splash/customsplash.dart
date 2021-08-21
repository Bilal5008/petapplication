import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:petapplication/Authentication/Login/login.dart';
import 'package:splashscreen/splashscreen.dart';

class MyCustomSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new LoginScreen(),
      title: new Text(
        'Flutterspouse',
        textScaleFactor: 2,
      ),
      image: new Image.network(
          'https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.green,
    );
  }
}