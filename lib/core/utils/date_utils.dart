import 'package:intl/intl.dart';

/// Date Utility functions
class AppDateUtils {
  AppDateUtils._();

  // =================================================================================
  // DATE FORMATING
  // =================================================================================

  /// Format: "05 Apr 2026"
  static String formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  /// Format 14:30
  static String formatTime(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }

  /// Format 05 Apr 2026, 14:30
  static String formatDateTime(DateTime date) {
    return DateFormat('dd MMM yyyy, HH:mm').format(date);
  }

  // Format April 2026
  static String formatMonthYear(DateTime date) {
    return DateFormat('MMMM yyyy').format(date);
  }

  /// Format 05 Apr
  static String formatDayMonth(DateTime date) {
    return DateFormat('dd MMM').format(date);
  }

  /// format Monday
  static String formatDayName(DateTime date) {
    return DateFormat('EEEE').format(date);
  }

  /// format mon
  static String formatShortDayName(DateTime date) {
    return DateFormat('E').format(date);
  }

  /// format apr
  static String formatShortMonthName(DateTime date) {
    return DateFormat('MMM').format(date);
  }
}
