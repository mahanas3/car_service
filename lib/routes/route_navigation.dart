import 'package:car_service/routes/route_name.dart';
import 'package:car_service/screens/home_page.dart';
import 'package:car_service/screens/signup.dart';
import 'package:flutter/material.dart';
import '../screens/loginpage.dart';

class AppRoute {
  static Route<dynamic> routesetting(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.loginscreen:
        return MaterialPageRoute(
          builder: (context) => const Login(),
        );
      case RouteName.signupscreen:
        return MaterialPageRoute(
          builder: (context) => const SignUp(),
        );
      case RouteName.homescreen:
        return MaterialPageRoute(
          builder: (context) => const Home(),
        );

      default:
        {
          return MaterialPageRoute(
            builder: (context) => const Login(),
          );
        }
    }
  }
}
