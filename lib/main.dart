import 'dart:async';

import 'package:flutter/material.dart';
import 'package:petapplication/onboarding_overlay.dart';
import 'package:petapplication/sk_onboardings_screen.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyCustomSplash(),
      debugShowCheckedModeBanner: false,
    );
  }

}

class MyCustomSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new SkOnboardingsScreen(),
      title: new Text(
        'Flutterspouse',
        textScaleFactor: 2,
      ),
      image: new Image.network(
          'https://www.geeksforgeeks.org/wp-content/uploads/gfg_200X200.png'),
      loadingText: Text("Loading"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
