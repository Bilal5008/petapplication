import 'dart:async';

import 'package:flutter/material.dart';
import 'package:petapplication/Authentication/Login/forgetpassword.dart';
import 'package:petapplication/Authentication/Login/login.dart';
import 'package:petapplication/Authentication/SignUp/signup.dart';
import 'package:petapplication/Common/routes.dart';
import 'Authentication/DashBoard/addpet.dart';
import 'Splash/customsplash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        Routes.forgetPasswordRoute: (context) => ForgetPasswordScreen(),
        Routes.signUpRoute: (context) => SignUpScreen(),
        Routes.dashboardRoute: (context) => AddPetScreen(),
      },
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyCustomSplash(),
      debugShowCheckedModeBanner: false,
    );
  }

}


