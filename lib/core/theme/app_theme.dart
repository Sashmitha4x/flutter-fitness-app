import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';

/// App Theme Configuration
class AppTheme {
  // Dark Theme (Primary Theme)
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.primaryBackground,
    fontFamily: AppFonts.primary,
  );
}