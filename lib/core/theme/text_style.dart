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
    fontSize: 24,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
    height: 1.3,
  );
  static const TextStyle dashboardGreetingBold = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
    height: 1.3,
  );

  // Section Headers
  static const TextStyle sectionHeader = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: AppColors.textPrimary,
  );

  // Workout Title
  static const TextStyle workoutTitle = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
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

  // Card Title
  static const TextStyle cardTitle = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  static const TextStyle cardTitleDark = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Color(0xFF000000),
  );

  // Exercise Name
  static const TextStyle exerciseName = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Color(0xFF000000),
  );

  // Exercise Repetition
  static const TextStyle exerciseReps = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );

  // Round Title
  static const TextStyle roundTitle = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Color(0xFF000000),
  );

  // Small Text
  static const TextStyle smallText = TextStyle(
    fontFamily: AppFonts.primary,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.textSecondary,
  );
}
