import 'package:flutter/material.dart';
import 'package:fllearn/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        primarySwatch: AppColors.appPrimaryColor,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.white,
        canvasColor: creamColor,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: darkBluishColor),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.titleSmall,
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primarySwatch: AppColors.appPrimaryColor,
        fontFamily: GoogleFonts.lato().fontFamily,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: lightBluishColor),
        textTheme: TextTheme(
          titleLarge: TextStyle(color: lightBluishColor),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.titleSmall,
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
      );

  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Colors.white;
}
