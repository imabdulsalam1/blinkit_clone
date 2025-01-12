import 'package:blinkit_clone/domain/constants/app_colors.dart';
import 'package:blinkit_clone/repository/screens/authentications_screen/login_screen/login_screen.dart';
import 'package:blinkit_clone/repository/screens/authentications_screen/signup_screen/signup_screen.dart';
import 'package:blinkit_clone/repository/screens/home_screen/home_screen.dart';
import 'package:blinkit_clone/repository/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Your Tickets',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: AppColors.appBgColor),
        scaffoldBackgroundColor: AppColors.appBgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.splashScreen,
      routes: {
        AppRoutes.splashScreen: (context) => const SplashScreen(),
        AppRoutes.loginScreen: (context) => const LoginScreen(),
        AppRoutes.signupScreen: (context) => const SignupScreen(),
        AppRoutes.homeScreen: (context) => const HomeScreen(),
      },
    );
  }
}

class AppRoutes {
  static const String splashScreen = '/';
  static const String loginScreen = '/login';
  static const String signupScreen = '/signup';
  static const String homeScreen = '/home';
}