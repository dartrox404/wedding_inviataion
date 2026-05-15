import 'package:flutter/material.dart';

class AppTextStyles {
  static const yellow = Color(0xffedc531);
  static const white = Colors.white; //
  static const goldentwo = Color(0xffa67c00);
  static const classicgold = Color(0xff81795B);
  static const golden = Color(0xffcca000);
  static const TextStyle h1 = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h2 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle h3 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle h4 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  // ====== BODY TEXT ======
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static const TextStyle bodySmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  // ====== BUTTON TEXT ======
  static const TextStyle buttonLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle buttonMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle buttonSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  // ====== CAPTION / EXTRA ======
  static const TextStyle caption = TextStyle(fontSize: 12, color: Colors.grey);

  static const TextStyle overline = TextStyle(fontSize: 10, letterSpacing: 1.2);
}
