
import 'package:ezyeve/presentation/initial_screen.dart';
import 'package:ezyeve/presentation/sign_up_screen.dart';
import 'package:ezyeve/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';
  static const String initialScreen = '/initial_screen';
  static const String initialRoute = '/initialRoute';
  static const String signUpScreen = '/sign_up_screen';


  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    initialScreen: (context) => InitialScreen(),
    signUpScreen: (context) => SignUpScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
