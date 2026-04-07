import 'package:flutter/material.dart';

/// App color palette based on Figma design
class AppColors {
  AppColors._();

  // ============================================================================
  // PRIMARY COLORS
  // ============================================================================

  static const Color primary = Color(0xFF8B5CF6);
  static const Color primaryLight = Color(0xFFA78BFA);
  static const Color primaryDark = Color(0xFF7C3AED);

  // ============================================================================
  // ACCENT COLORS
  // ============================================================================

  static const Color accentPink = Color(0xFFF472B6);
  static const Color accentRed = Color(0xFFEF4444);
  static const Color accentBlue = Color(0xFF6366F1);
  static const Color accentTan = Color(0xFFD4B896);
  static const Color accentGreen = Color(0xFF10B981);
  static const Color accentOrange = Color(0xFFF59E0B);

  // ============================================================================
  // BACKGROUND COLORS (Dark Theme)
  // ============================================================================

  static const Color backgroundBlack = Color(0xFF000000);
  static const Color backgroundDark = Color(0xFF1F1F1F);
  static const Color backgroundMedium = Color(0xFF2D2D2D);
  static const Color backgroundLight = Color(0xFF3F3F3F);
  static const Color backgroundOverlay = Color(0xFF6B7280);

  // ============================================================================
  // TEXT COLORS
  // ============================================================================

  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFD1D5DB);
  static const Color textTertiary = Color(0xFF9CA3AF);
  static const Color textDisabled = Color(0xFF6B7280);

  // ============================================================================
  // BORDER COLORS
  // ============================================================================

  static const Color borderGray = Color(0xFF4B5563);
  static const Color borderPurple = Color(0xFF8B5CF6);
  static const Color borderRed = Color(0xFFEF4444);
  static const Color borderGreen = Color(0xFF10B981);

  // ============================================================================
  // STATUS COLORS
  // ============================================================================

  static const Color statusCompleted = primary;
  static const Color statusPastDue = accentRed;
  static const Color statusFuture = borderGray;
  static const Color statusToday = primary;

  // ============================================================================
  // TAG COLORS
  // ============================================================================

  static const Color tagUrgent = accentBlue;
  static const Color tagWork = accentPink;
  static const Color tagPersonal = accentGreen;
  static const Color tagResearch = accentOrange;
  static const Color tagRandom = primary;

  // ============================================================================
  // SEMANTIC COLORS
  // ============================================================================

  static const Color success = accentGreen;
  static const Color error = accentRed;
  static const Color warning = accentOrange;
  static const Color info = accentBlue;

  // ============================================================================
  // OPACITY VARIANTS
  // ============================================================================

  static const Color overlay = Color(0x99000000);
  static const Color overlayLight = Color(0x33000000);
  static const Color overlayHeavy = Color(0xCC000000);

  // ============================================================================
  // HELPER METHODS
  // ============================================================================

  /// Get category color by name
  static Color getCategoryColor(String category) {
    switch (category.toLowerCase()) {
      case 'urgent':
        return tagUrgent;
      case 'work':
        return tagWork;
      case 'personal':
        return tagPersonal;
      case 'research':
        return tagResearch;
      case 'random':
      default:
        return tagRandom;
    }
  }

  /// Get status color based on task state
  static Color getStatusColor({
    required bool isCompleted,
    required DateTime taskDate,
  }) {
    if (isCompleted) return statusCompleted;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final taskDay = DateTime(taskDate.year, taskDate.month, taskDate.day);

    if (taskDay.isBefore(today)) {
      return statusPastDue;
    } else if (taskDay.isAtSameMomentAs(today)) {
      return statusToday;
    } else {
      return statusFuture;
    }
  }

  /// Create a color with opacity (0.0 to 1.0)
  static Color opacity(Color color, double opacity) {
    assert(opacity >= 0.0 && opacity <= 1.0);
    return Color.fromRGBO(
      (color.r * 255.0).round().clamp(0, 255),
      (color.g * 255.0).round().clamp(0, 255),
      (color.b * 255.0).round().clamp(0, 255),
      opacity,
    );
  }
}

