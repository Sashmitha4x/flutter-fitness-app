import 'package:flutter/material.dart';
import 'fonts.dart';
import 'colors.dart';

/// App Text Styles
class AppTextStyles {
  // Splash Screen Title
  static const TextStyle splashTitle = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 36,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
    height: 1.2,
  );
  // Button Text
  static const TextStyle buttonText = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle buttonTextMedium = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Chip Text
  static const TextStyle chipText = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.chipText,
  );
  // Section Headers
  static const TextStyle sectionHeader = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );
  static const TextStyle cardTitleDark = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color(0xFF000000),
  );
  
}
