import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'colors.dart';

class AppTypography {
  //prevent instantiation
  AppTypography._();

  // ======================================================
  // FONT FAMILY
  // ======================================================

  static const String fontFamily = 'Roboto';

  // ======================================================
  // TEXT STYLES
  // ======================================================

  /// Display Large - 48 px, Bold
  /// Use case: Welcome Screen title ("Task management")
  static const TextStyle displayLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 48,
    fontWeight: FontWeight.w700,
    height: 1.2,
    color: AppColors.textPrimary,
    letterSpacing: -0.5,
  );

  ///Headline 1 - 32 px, bold
  /// Use case: Screen title(login, register)
  static const TextStyle headLine1 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 32,
    fontWeight: FontWeight.w700,
    height: 1.3,
    color: AppColors.textPrimary,
    letterSpacing: -0.5,
  );

  /// Headline 2 - 28 px, Semi-bold
  /// use case: user name display
  static const TextStyle headLine2 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.3,
    color: AppColors.textPrimary,
    letterSpacing: -0.3,
  );

  /// Headline 3
  /// usecase section headers (Future Today Task)
  static const TextStyle headLine3 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 24,
    height: 1.4,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    letterSpacing: -0.3,
  );

  /// HEadline 4 - 20px, semi-bold
  /// Use Case: Category names, settings
  static const TextStyle headline4 = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.textPrimary,
    letterSpacing: 0,
  );

  /// Body Large - 18px medium
  /// Use Case: task name, button text
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.textPrimary,
    letterSpacing: 0,
  );

  ///body medium - 16 px regular
  /// use case teask description, form labels
  static const TextStyle bodyMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textPrimary,
    letterSpacing: 0,
  );

  /// body small - 14 px regular
  /// use case task dates, seondary info
  static const TextStyle bodySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textSecondary,
    letterSpacing: 0,
  );

  /// caption - 12px, regular
  /// use case: Calendar labels hints,
  static const TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AppColors.textTertiary,
    letterSpacing: 0.2,
  );

  /// Overline - 10 px medium Uppercase
  // Use case Labels tags (optional)
  static const TextStyle overline = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    height: 1.6,
    color: AppColors.textTertiary,
    letterSpacing: 1.5,
  );

  // ===========================================================================
  // BUTTON TEXT STYle
  // ===========================================================================

  /// Button large
  static const TextStyle buttonLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textPrimary,
    letterSpacing: 0.5,
  );

  ///Button Medium
  static const TextStyle buttonMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textPrimary,
    letterSpacing: 0.5,
  );

  /// Button Small
  static const TextStyle buttonSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textPrimary,
    letterSpacing: 0.5,
  );

  // ===========================================================================
  // SPECIALISED TEXT STYLE
  // ===========================================================================

  /// Input field text
  static const TextStyle input = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textPrimary,
    letterSpacing: 0,
  );

  ///Placeholder text
  static const TextStyle placeholder = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    height: 1.5,
    color: AppColors.textTertiary,
    letterSpacing: 0,
  );

  /// Error text
  static const TextStyle error = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.4,
    color: AppColors.error,
    letterSpacing: 0,
  );

  /// Link Text
  static const TextStyle link = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.5,
    color: AppColors.primary,
    letterSpacing: 0,
    decoration: TextDecoration.underline,
  );

  // ===========================================================================
  // HELPER METHODS
  // ===========================================================================

  /// Create a TextTheme for MaterialApp
  static TextTheme get textTheme => const TextTheme(
    displayLarge: displayLarge,
    displayMedium: headLine1,
    displaySmall: headLine2,
    headlineLarge: headLine1,
    headlineMedium: headLine2,
    headlineSmall: headLine3,
    titleLarge: headline4,
    titleMedium: bodyLarge,
    titleSmall: bodyMedium,
    bodyLarge: bodyLarge,
    bodyMedium: bodyMedium,
    bodySmall: bodySmall,
    labelLarge: buttonLarge,
    labelMedium: buttonMedium,
    labelSmall: caption,
  );

  /// apply color to text style
  static TextStyle withColor(TextStyle style, Color color) {
    return style.copyWith(color: color);
  }

  /// apply font weight to text style
  static TextStyle withWeight(TextStyle style, FontWeight weight) {
    return style.copyWith(fontWeight: weight);
  }

  /// apply font size to text style
  static TextStyle withSize(TextStyle style, double size) {
    return style.copyWith(fontSize: size);
  }

  /// Make text style bold
  static TextStyle bold(TextStyle style) {
    return style.copyWith(fontWeight: FontWeight.w700);
  }

  /// Make text style semi-bold
  static TextStyle semiBold(TextStyle style) {
    return style.copyWith(fontWeight: FontWeight.w600);
  }

  /// Make text style medium
  static TextStyle medium(TextStyle style) {
    return style.copyWith(fontWeight: FontWeight.w500);
  }

  /// make text style regular
  static TextStyle regular(TextStyle style) {
    return style.copyWith(fontWeight: FontWeight.w400);
  }

  /// add underline to text style
  static TextStyle underline(TextStyle style) {
    return style.copyWith(decoration: TextDecoration.underline);
  }

  /// add strikethrough to text style
  static TextStyle strikethrough(TextStyle style) {
    return style.copyWith(decoration: TextDecoration.lineThrough);
  }

  /// make text style italic
  static TextStyle italic(TextStyle style) {
    return style.copyWith(fontStyle: FontStyle.italic);
  }
}
