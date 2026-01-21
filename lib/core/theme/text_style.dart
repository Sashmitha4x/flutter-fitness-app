import 'package:flutter/material.dart';
import 'fonts.dart';
import 'colors.dart';

/// App Text Styles
class AppTextStyles {
  // Splash Screen Title
  static const TextStyle splashTitle = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 34,
    fontWeight: FontWeight.w400,
    color: Color.fromRGBO(252, 247, 247, 1),
    height: 1.2,
  );
  
  static const TextStyle dashboardGreeting = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 22,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
    height: 1.3,
  );
  // Section Headers
  static const TextStyle sectionHeader = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );
  
}
