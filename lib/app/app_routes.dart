import 'package:ecommerce/features/auth/ui/screens/sign_in_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/sign_up_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/splash_screen.dart';
import 'package:ecommerce/features/auth/ui/screens/veify_otp_screen.dart';
import 'package:ecommerce/features/common/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    late Widget route;
    if (settings.name == SplashScreen.name) {
      route = SplashScreen();
    }
    else if (settings.name == SignInScreen.name) {
      route = SignInScreen();
    }
     else if (settings.name == SignUpScreen.name) {
      route = SignUpScreen();
    }
      else if (settings.name == VerifyOtpScreen.name) {
      route = VerifyOtpScreen();
    }
    else if (settings.name == MainBottomNavigationScreen.name) {
      route = MainBottomNavigationScreen();
    }

    return MaterialPageRoute(
      builder: (context) {
        return route;
      },
    );
  }
}
