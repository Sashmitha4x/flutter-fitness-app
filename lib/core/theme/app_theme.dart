import 'package:flutter/material.dart';
import 'package:task2_fitness_app/core/theme/text_style.dart';
import 'colors.dart';
import 'fonts.dart';

/// App Theme Configuration
class AppTheme {
  // Dark Theme (Primary Theme)
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    
    // Color Scheme
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryButton,
      secondary: AppColors.accentRed,
      surface: AppColors.primaryBackground,
      background: AppColors.primaryBackground,
      error: AppColors.accentRed,
      onPrimary: AppColors.textPrimary,
      onSecondary: AppColors.textPrimary,
      onSurface: AppColors.textPrimary,
      onBackground: AppColors.textPrimary,
    ),
    
    // Scaffold Background
    scaffoldBackgroundColor: AppColors.primaryBackground,
    
    // AppBar Theme
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryBackground,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.textPrimary),
      titleTextStyle: AppTextStyles.sectionHeader,
    ),
    
    // Card Theme
    cardTheme: CardTheme(
      color: AppColors.cardBackground,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    
    // Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryButton,
        foregroundColor: AppColors.textPrimary,
        textStyle: AppTextStyles.buttonText,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(999), // Pill shape
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        elevation: 0,
      ),
    ),
    
    // Chip Theme
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.chipBackground,
      labelStyle: AppTextStyles.chipText,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(999),
      ),
    ),
    
    // Icon Theme
    iconTheme: const IconThemeData(
      color: AppColors.textPrimary,
      size: 24,
    ),
    
    // Text Theme
    textTheme: const TextTheme(
      displayLarge: AppTextStyles.splashTitle,
      labelLarge: AppTextStyles.buttonText,
    ),
    
    // Font Family
    fontFamily: AppFonts.primary,
  );
}
