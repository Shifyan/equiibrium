import 'package:flutter/material.dart';
import '../constants/app_color.dart';
import '../constants/app_text_style.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColor.primary,
      scaffoldBackgroundColor: AppColor.background,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: AppColor.primary,
        onPrimary: AppColor.onPrimary,
        primaryContainer: AppColor.primaryContainer,
        onPrimaryContainer: AppColor.onPrimaryContainer,
        secondary: AppColor.secondary,
        onSecondary: AppColor.onSecondary,
        secondaryContainer: AppColor.secondaryContainer,
        onSecondaryContainer: AppColor.onSecondaryContainer,
        tertiary: AppColor.tertiary,
        onTertiary: AppColor.onTertiary,
        tertiaryContainer: AppColor.tertiaryContainer,
        onTertiaryContainer: AppColor.onTertiaryContainer,
        error: AppColor.error,
        onError: AppColor.onError,
        errorContainer: AppColor.errorContainer,
        onErrorContainer: AppColor.onErrorContainer,
        surface: AppColor.surface,
        onSurface: AppColor.onSurface,
        surfaceContainerHighest: AppColor.surfaceContainerHighest,
        onSurfaceVariant: AppColor.onSurfaceVariant,
        outline: AppColor.outline,
        outlineVariant: AppColor.outlineVariant,
        shadow: Colors.black,
        inverseSurface: AppColor.inverseSurface,
        onInverseSurface: AppColor.inverseOnSurface,
        inversePrimary: AppColor.inversePrimary,
        surfaceTint: AppColor.surfaceTint,
      ),
      textTheme: TextTheme(
        displayLarge: AppTextStyle.displayLg,
        headlineMedium: AppTextStyle.headlineMd,
        bodyLarge: AppTextStyle.bodyLg,
        bodySmall: AppTextStyle.bodySm,
        labelLarge: AppTextStyle.labelCaps,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.surface,
        foregroundColor: AppColor.onSurface,
        elevation: 0,
      ),
      cardTheme: CardThemeData(
        color: AppColor.surfaceContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // lg radius for cards
          side: const BorderSide(color: Color(0xFF334155), width: 1),
        ),
        elevation: 0,
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColor.secondaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4), // sm radius for inputs
          borderSide: const BorderSide(color: AppColor.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColor.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: AppColor.primary),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          foregroundColor: AppColor.onPrimary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          textStyle: AppTextStyle.labelCaps,
        ),
      ),
    );
  }
}
