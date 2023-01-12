// ignore_for_file: constant_identifier_names

import 'package:fit_studio/screens/forgot_password_screen.dart';
import 'package:fit_studio/screens/homepage.dart';
import 'package:fit_studio/screens/onboarding_screen.dart';
import 'package:fit_studio/screens/preview_screen.dart';
import 'package:fit_studio/screens/sign_up_screen.dart';

import '../screens/login_screen.dart';

class AppRoutes {
  static const String LoginRoute = "/login";
  static const String OnboardingRoute = "/onboarding";
  static const String SignUpRoute = "/signup";
  static const String HomeRoute = "/home";
  static const String PreviewRoute = "/preview";
  static const String ForgotPasswordRoute = "/forgotpassword";

  static final routes = {
    OnboardingRoute: (context) => const OnboardingScreen(),
    LoginRoute: (context) => const LoginScreen(),
    SignUpRoute: (context) => const SignUpScreen(),
    HomeRoute: (context) => const HomePageScreen(),
    PreviewRoute: (context) => const PreviewScreen(),
    ForgotPasswordRoute: (context) => const ForgotPasswordScreen()
  };
}
