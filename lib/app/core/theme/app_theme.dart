import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static String primaryFontFamily = GoogleFonts.plusJakartaSans().fontFamily!;
  static TextStyle primaryTextStyle = GoogleFonts.plusJakartaSans();

  static ThemeData get lightTheme => ThemeData(
    colorScheme: const ColorScheme.light(primary: AppColors.white),
    fontFamily: primaryFontFamily,
    textTheme: const TextTheme().apply(fontFamily: primaryFontFamily),
    primaryTextTheme: const TextTheme().apply(fontFamily: primaryFontFamily),
    iconTheme: const IconThemeData(color: AppColors.black),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        foregroundColor: AppColors.black,
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black87),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
      hintStyle: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        color: Color(0xFFBBBBC1),
      ),
      labelStyle: const TextStyle(fontSize: 12),
      errorStyle: const TextStyle(fontSize: 12),
      fillColor: AppColors.primaryRed,
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryRed,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: TextStyle(fontSize: 18),
      ),
    ),
  );
  static ThemeData get darkTheme => ThemeData(
    colorScheme: ColorScheme.dark(primary: Colors.grey.shade800),
    fontFamily: primaryFontFamily,
    textTheme: const TextTheme().apply(
      fontFamily: primaryFontFamily,
      bodyColor: AppColors.white,
      displayColor: AppColors.white,
    ),
    primaryTextTheme: const TextTheme().apply(
      fontFamily: primaryFontFamily,
      bodyColor: AppColors.white,
      displayColor: AppColors.white,
    ),
    iconTheme: const IconThemeData(color: AppColors.white),
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        foregroundColor: AppColors.white,
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
      ),
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.black87,
      iconTheme: IconThemeData(color: AppColors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      hintStyle: const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        // color: AppColors.white,
      ),
      labelStyle: const TextStyle(fontSize: 12, color: AppColors.white),
      errorStyle: const TextStyle(fontSize: 12, color: Colors.red),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.primaryRed),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.red),
      ),
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: Colors.grey.shade800,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryRed,
        foregroundColor: Colors.black87,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
  );
}
