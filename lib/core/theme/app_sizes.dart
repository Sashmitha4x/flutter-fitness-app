import 'package:flutter/material.dart';

/// App Sizing and Spacing Constants
class AppSizes {
  // Padding & Margins
  static const double paddingXS = 4.0;
  static const double paddingS = 8.0;
  static const double paddingM = 16.0;
  static const double paddingL = 24.0;
  static const double paddingXL = 32.0;
  static const double paddingXXL = 48.0;
  
  // Border Radius
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 24.0;
  static const double radiusFull = 999.0; // For pill shapes
  
  // Button Sizes
  static const double buttonHeight = 56.0;
  static const double buttonHeightSmall = 44.0;
  static const double buttonHeightLarge = 64.0;
  
  // Icon Sizes
  static const double iconS = 16.0;
  static const double iconM = 24.0;
  static const double iconL = 32.0;
  static const double iconXL = 48.0;
  
  // Card Sizes
  static const double cardElevation = 2.0;
  static const double cardHeight = 200.0;
  static const double cardHeightSmall = 120.0;
  static const double cardHeightLarge = 280.0;
  
  // Spacing between elements
  static const double spaceXS = 4.0;
  static const double spaceS = 8.0;
  static const double spaceM = 16.0;
  static const double spaceL = 24.0;
  static const double spaceXL = 32.0;
  
  // Avatar & Thumbnail Sizes
  static const double thumbnailS = 60.0;
  static const double thumbnailM = 80.0;
  static const double thumbnailL = 100.0;
  
  // Chip Sizes
  static const double chipHeight = 36.0;
  
  // Responsive Breakpoints
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 900.0;
  static const double desktopBreakpoint = 1200.0;
  
  // Helper Methods for Responsive Design
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;
  
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileBreakpoint &&
      MediaQuery.of(context).size.width < tabletBreakpoint;
  
  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletBreakpoint;
  
  // Get screen width
  static double screenWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  
  // Get screen height
  static double screenHeight(BuildContext context) =>
      MediaQuery.of(context).size.height;
}
