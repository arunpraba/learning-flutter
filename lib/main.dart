import 'package:fllearn/pages/cart_page.dart';
import 'package:fllearn/pages/home_page.dart';
import 'package:fllearn/pages/login_page.dart';
import 'package:fllearn/utils/routes.dart';
import 'package:fllearn/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      initialRoute: AppRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        AppRoutes.homeRoute: (context) => const HomePage(),
        AppRoutes.loginRoute: (context) => const LoginPage(),
        AppRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
