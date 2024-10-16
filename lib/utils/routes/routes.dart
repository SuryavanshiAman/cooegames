import 'package:cooe_games/res/text_widget.dart';
import 'package:cooe_games/utils/routes/routes_name.dart';
import 'package:cooe_games/view/auth/forgot_password_screen.dart';
import 'package:cooe_games/view/auth/login_screen.dart';
import 'package:cooe_games/view/auth/register_screen.dart';
import 'package:cooe_games/view/auth/splash_screen.dart';
import 'package:cooe_games/view/home_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static WidgetBuilder generateRoute(String routeName) {
    switch (routeName) {
      case RoutesName.splashScreen:
        return (context) => const SplashScreen();
      case RoutesName.loginScreen:
        return (context) => const LoginScreen();
      case RoutesName.registerScreen:
        return (context) => const RegisterScreen();
      case RoutesName.forgotScreen:
        return (context) => const ForgotPassScreen();
      case RoutesName.homeScreen:
        return (context) => const HomeScreen();
      default:
        return (context) => Scaffold(
              body: Center(
                child: textWidget(
                    text: 'No Route Found!',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
            );
    }
  }
}