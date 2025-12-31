import 'package:flutter/material.dart';

/// Premium App Theme Configuration for Vehixly
/// Implements luxury design with white, black, and electric blue color scheme
class AppTheme {
  // Premium Color Palette
  static const Color primaryWhite = Color(0xFFFFFFFF);
  static const Color primaryBlack = Color(0xFF000000);
  static const Color electricBlue = Color(0xFF0080FF);
  static const Color electricBlueDark = Color(0xFF0066CC);
  static const Color electricBlueLight = Color(0xFF3399FF);
  static const Color surfaceGray = Color(0xFFF8F9FA);
  static const Color textGray = Color(0xFF6C757D);
  static const Color borderGray = Color(0xFFE9ECEF);

  // Typography Scale - Premium Font System using built-in fonts
  static TextTheme get premiumTextTheme => const TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: primaryBlack,
      height: 1.2,
      fontFamily: 'Roboto',
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: primaryBlack,
      height: 1.3,
      fontFamily: 'Roboto',
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: primaryBlack,
      height: 1.3,
      fontFamily: 'Roboto',
    ),
    headlineLarge: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: primaryBlack,
      height: 1.4,
      fontFamily: 'Roboto',
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: primaryBlack,
      height: 1.4,
      fontFamily: 'Roboto',
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: primaryBlack,
      height: 1.4,
      fontFamily: 'Roboto',
    ),
    titleLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: primaryBlack,
      height: 1.5,
      fontFamily: 'Roboto',
    ),
    titleMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: primaryBlack,
      height: 1.5,
      fontFamily: 'Roboto',
    ),
    titleSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: textGray,
      height: 1.5,
      fontFamily: 'Roboto',
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: primaryBlack,
      height: 1.6,
      fontFamily: 'Roboto',
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: primaryBlack,
      height: 1.6,
      fontFamily: 'Roboto',
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: textGray,
      height: 1.6,
      fontFamily: 'Roboto',
    ),
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: primaryBlack,
      height: 1.4,
      fontFamily: 'Roboto',
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: primaryBlack,
      height: 1.4,
      fontFamily: 'Roboto',
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: textGray,
      height: 1.4,
      fontFamily: 'Roboto',
    ),
  );

  // Premium Light Theme
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: electricBlue,
      onPrimary: primaryWhite,
      secondary: electricBlue,
      onSecondary: primaryWhite,
      surface: primaryWhite,
      onSurface: primaryBlack,
      surfaceVariant: surfaceGray,
      onSurfaceVariant: textGray,
      outline: borderGray,
    ),
    textTheme: premiumTextTheme,

    // Premium AppBar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: primaryWhite,
      foregroundColor: primaryBlack,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: primaryBlack,
        fontFamily: 'Roboto',
      ),
    ),

    // Premium Button Themes
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: electricBlue,
        foregroundColor: primaryWhite,
        elevation: 2,
        shadowColor: electricBlue.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: electricBlue,
        side: const BorderSide(color: electricBlue, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: electricBlue,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        ),
      ),
    ),

    // Premium Input Decoration Theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: surfaceGray,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: electricBlue, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      hintStyle: const TextStyle(
        fontSize: 16,
        color: textGray,
        fontFamily: 'Roboto',
      ),
    ),

    // Premium Card Theme
    cardTheme: CardThemeData(
      color: primaryWhite,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: borderGray, width: 1),
      ),
    ),

    // Premium Divider Theme
    dividerTheme: const DividerThemeData(
      color: borderGray,
      thickness: 1,
      space: 1,
    ),
  );

  // Premium Dark Theme
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: electricBlue,
      onPrimary: primaryWhite,
      secondary: electricBlue,
      onSecondary: primaryWhite,
      surface: primaryBlack,
      onSurface: primaryWhite,
      surfaceVariant: Color(0xFF1A1A1A),
      onSurfaceVariant: Color(0xFFB3B3B3),
      outline: Color(0xFF404040),
    ),
    textTheme: premiumTextTheme.apply(
      bodyColor: primaryWhite,
      displayColor: primaryWhite,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: primaryBlack,
      foregroundColor: primaryWhite,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: electricBlue,
        foregroundColor: primaryWhite,
        elevation: 2,
        shadowColor: electricBlue.withOpacity(0.3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: electricBlue,
        side: const BorderSide(color: electricBlue, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        ),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: electricBlue,
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Roboto',
        ),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: const Color(0xFF1A1A1A),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: electricBlue, width: 2),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      hintStyle: const TextStyle(
        fontSize: 16,
        color: Color(0xFFB3B3B3),
        fontFamily: 'Roboto',
      ),
    ),

    cardTheme: CardThemeData(
      color: const Color(0xFF1A1A1A),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Color(0xFF404040), width: 1),
      ),
    ),

    dividerTheme: const DividerThemeData(
      color: Color(0xFF404040),
      thickness: 1,
      space: 1,
    ),
  );
}
