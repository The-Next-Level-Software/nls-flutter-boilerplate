import 'package:flutter/material.dart';

class AppColors {
  static const Color darkGrey = Color(0xFF201F23);
  static const Color midGrey = Color(0xFF6B7280);
  static const Color primaryRed = Color(0xFFFF0000);
  static const Color lightRed = Color(0xFFFF9A9A);
  static const Color darkBlueGray = Color(0xFF1F2937);
  static const Color darkSlateBlue = Color(0xFF344054);
  static const Color slateGray = Color(0xFF4B5563);
  static const Color lightGray = Color(0xFFD0D5DD);
  static const Color fulllightGray = Color.fromARGB(255, 230, 231, 235);
  static const Color vendorCardLightGray = Color.fromARGB(255, 246, 248, 250);
  static const Color brownDark = Color(0xFF723B13);
  static const Color customGreen = Color(0xFFDEF7EC);

  static const Color lightDarkGreen = Color.fromARGB(255, 206, 230, 206);
  static const Color customDarkGreen = Color(0xFF03543F);

  static const Color gray900 = Color(0xFF111827);
  static const Color white = Colors.white;
  static const Color red = Colors.red;
  static const Color black = Colors.black;
  static const Color black87 = Colors.black87;
  static const Color black54 = Colors.black54;
  static const Color black45 = Colors.black45;

  static const LinearGradient redGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryRed, lightRed],
  );
  static const LinearGradient redRotionalGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    transform: GradientRotation(117.72 * (3.14159265 / 180)),
    colors: [Color(0xFFFF9A9A), Color(0xFFFF0000)],
    stops: [0.0819, 0.9761],
  );
}
