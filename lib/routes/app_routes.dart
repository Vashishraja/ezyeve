import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/initial_screen/initial_screen.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/otp_verification_screen/otp_verification_screen.dart';
import '../presentation/signup_screen/signup_screen.dart';
import '../presentation/splash_screen/splash_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String initialScreen = '/initial_screen';

  static const String signupScreen = '/signup_screen';

  static const String loginScreen = '/login_screen';

  static const String otpVerificationScreen = '/otp_verification_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    initialScreen: (context) => InitialScreen(),
    signupScreen: (context) => SignupScreen(),
    loginScreen: (context) => LoginScreen(),
    otpVerificationScreen: (context) => OtpVerificationScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen()
  };
}
