import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pallete {
  // Colors
  static const bgColor = Color(0xFF101010); // primary color
  static const greyColor = Color(0xFF000000); // secondary color
  static const drawerColor = Color(0xFF000000);
  static const pastelBlue = Color(0xFF9FE2D9);
  static const pastelYellow = Color(0xFFF6F193);
  static const profitGreen = Color(0xFF46FF42);
  static const pastelGreen = Color(0xFFC5EBAA);
  static const borderGrey = Color.fromARGB(255, 50, 50, 50);
  static const secondaryGrey = Color.fromARGB(255, 100, 100, 100);
  static const whiteColor = Colors.white;
  static var redColor = Colors.red.shade500;
  static var blueColor = Colors.blue.shade300;
  static var silverColor = const Color(0xFFC0C0C0);

  // Themes
  static var darkModeAppTheme = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: bgColor,
      cardColor: greyColor,
      colorScheme: ColorScheme.fromSeed(seedColor: redColor),
      appBarTheme: AppBarTheme(
        backgroundColor: bgColor,
        iconTheme: const IconThemeData(
          color: whiteColor,
        ),
        titleTextStyle: GoogleFonts.jua(
          textStyle: const TextStyle(
            color: whiteColor, // Set the color of the AppBar title text here
            // fontSize: 20, // Set the font size of the AppBar title text here
          ),
        ),
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: drawerColor,
      ),
      primaryColor: redColor,
      primaryColorDark: redColor,
      focusColor: redColor,
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.jua(),
        bodyMedium: GoogleFonts.jua(),
        // Add other text styles as needed
      ),
      chipTheme: const ChipThemeData(
          color: MaterialStatePropertyAll(Pallete.bgColor),
          side: BorderSide(color: Pallete.whiteColor)));

  static var lightModeAppTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whiteColor,
    cardColor: greyColor,
    appBarTheme: AppBarTheme(
      backgroundColor: whiteColor,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: greyColor,
      ),
      titleTextStyle: GoogleFonts.jua(
        textStyle: const TextStyle(
          color: bgColor, // Set the color of the AppBar title text here
          fontSize: 20, // Set the font size of the AppBar title text here
        ),
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: whiteColor,
    ),
    colorScheme:
        ColorScheme.fromSeed(seedColor: bgColor, background: whiteColor),
    primaryColor: redColor,
    primaryColorDark: redColor,
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.jua(),
      bodyMedium: GoogleFonts.jua(),
      // Add other text styles as needed
    ),
  );
}
