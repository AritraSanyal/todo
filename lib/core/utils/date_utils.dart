import 'package:flutter/cupertino.dart';
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

  // =======================================================================================
  // RELATIVE DATE FORMATTING
  // =======================================================================================

  /// Return "Today", "tomorry", yesterday or formatted date
  static String formatRelativeData(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dateOnly = DateTime(date.year, date.month, date.day);

    final difference = dateOnly.difference(today).inDays;

    if (difference == 0) {
      return 'Today';
    } else if (difference == 1) {
      return 'Tomorrow';
    } else if (difference == -1) {
      return 'Yesterday';
    } else if (difference > 1 && difference <= 7) {
      return formatDayName(date);
    } else if (difference < -1 && difference >= -7) {
      return formatDayName(date);
    } else {
      return formatDate(date);
    }
  }

  /// Return 2 hours ago or 3 days aago etc
  static String formatTimeAgo(DateTime date) {
    final now = DateTime.now();
    final difference = date.difference(now);

    if (difference.inSeconds < 60) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      final minutes = difference.inMinutes;
      return "$minutes ${minutes == 1 ? 'minute' : 'minutes'} ago";
    } else if (difference.inHours < 24) {
      final hours = difference.inHours;
      return "$hours ${hours == 1 ? 'hour' : 'hours'} ago";
    } else if (difference.inDays < 7) {
      final days = difference.inDays;
      return "$days ${days == 1 ? 'day' : 'days'} ago ";
    } else if (difference.inDays < 28) {
      final weeks = (difference.inDays / 7).floor();
      return "$weeks ${weeks == 1 ? 'week' : 'weeks'} ago";
    } else if (difference.inDays < 365) {
      final months = (difference.inDays / 30).floor();
      return "$months ${months == 1 ? 'month' : 'months'} ago";
    } else {
      final years = (difference.inDays / 365).floor();
      return "$years ${years == 1 ? 'year' : 'years'}ago";
    }
  }

  // =====================================================================================
  // DATE COMPARISONS
  // =====================================================================================

  //check if two dates are the same day
  static bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  // check if date is today
  static bool isToday(DateTime date) {
    return isSameDay(date, DateTime.now());
  }

  // check if date is tomorrow
  static bool isTomorrow(DateTime date) {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    return isSameDay(date, tomorrow);
  }

  // check if date is yesterday
  static bool isYesterday(DateTime date) {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return isSameDay(date, yesterday);
  }

  //check if date is in past
  static bool isInPast(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final dateOnly = DateTime(date.year, date.month, date.day);
    return dateOnly.isBefore(today);
  }

  // check if date is in future
  static bool isInFuture(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, date.month, date.day);
    final dateOnly = DateTime(date.year, date.month, date.day);
    return dateOnly.isAfter(today);
  }

  // check if date is this week
  static bool isInSameWeek(DateTime date) {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: (now.weekday - 1)));
    final endOfWeek = startOfWeek.add(const Duration(days: 6));
    return date.isAfter(startOfWeek.subtract(const Duration(days: 1))) &&
        date.isBefore(endOfWeek.add(const Duration(days: 1)));
  }

  // check if date is this month
  static bool isInSameMonth(DateTime date) {
    final now = DateTime.now();
    return date.year == now.year && date.month == now.month;
  }

  // =====================================================================================
  // DATE MANIPULATION
  // =====================================================================================

  // get start of day (00:00:00)
  static DateTime starOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  // get end of day (23:59:59)
  static DateTime endOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59);
  }

  // get start of week(Monday 00:00:00)
  static DateTime starOfWeek(DateTime date) {
    return date.subtract(Duration(days: (date.weekday - 1)));
  }

  // get end of week (sunday 23:59:59)
  static DateTime endOfWeek(DateTime date) {
    return starOfWeek(date).add(const Duration(days: 6));
  }

  // get start of month
  static DateTime startOfMonth(DateTime date) {
    return DateTime(date.year, date.month, 1);
  }

  // get end of month
  static DateTime endOFMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, 0);
  }

  // add days to date
  static DateTime addDays(DateTime date, int daysToAdd) {
    return date.add(Duration(days: daysToAdd));
  }

  // subtract days from date
  static DateTime subDays(DateTime date, int daysToSub) {
    return date.add(Duration(days: daysToSub));
  }

  //add months ot date
  static DateTime addMonth(DateTime date) {
    return DateTime(date.year, date.month + 1, date.day);
  }

  // subtract months from date
  static DateTime subMonth(DateTime date) {
    return DateTime(date.year, date.month - 1, date.day);
  }

  // =====================================================================================
  // DATE GENERATION
  // =====================================================================================

  // get list of dates for a month (for calender view)
  static List<DateTime> getDatesOfMonth(DateTime date) {
    final endOfMonth = DateTime(date.year, date.month + 1, 0).day;
    return List.generate(
      endOfMonth,
      (i) => DateTime(date.year, date.month, i + 1),
    );
  }

  // get list of dates for a week
  static List<DateTime> datesForWeek(DateTime date) {
    final startOfWeek = date.subtract(Duration(days: date.weekday - 1));
    return List.generate(7, (i) => startOfWeek.add(Duration(days: i + 1)));
  }

  // get calendar grid dates (42 days including prev/next month)
  static List<DateTime> getCalenderGrid(DateTime date) {
    final startOfPrint = starOfWeek(DateTime(date.year, date.month, 1));
    return List.generate(42, (i) => startOfPrint.add(Duration(days: i + 1)));
  }

  // =====================================================================================
  // VALIDATION
  // =====================================================================================

  // check if date is valid
  static bool isValidDate(int year, int month, int day) {
    final dateCheck = DateTime(year, month, day);
    return dateCheck.year == year &&
        dateCheck.month == month &&
        dateCheck.day == day;
  }

  // check if the time is valid
  static bool isValidTime(int hour, int minutes, [int seconds = 0]) =>
      (hour | minutes | seconds) > 0 &&
      hour < 24 &&
      minutes < 60 &&
      seconds < 60;

  // =====================================================================================
  // PARSING
  // =====================================================================================

  // parse date string ( handels multiple formats )
  static DateTime? tryParse(String dateStr) {
    try {
      return DateTime.parse(dateStr);
    } catch (e) {
      try {
        return DateFormat('dd MMM yyyy').parse(dateStr);
      } catch (e) {
        try {
          return DateFormat('dd/MMM/yyyy').parse(dateStr);
        } catch (e) {
          return null;
        }
      }
    }
  }

  // =====================================================================================
  // BUSINESS LOGIC HELPERS
  // =====================================================================================

  // get number of days between two dates
  static int noOfDaysBetween(DateTime date1, DateTime date2) =>
      date1.difference(date2).inDays;

  /// Get weekend dates for a month
  static List<DateTime> getWeekendsInMonth(DateTime month) {
    final dates = getDatesOfMonth(month);
    return dates
        .where((date) => date.weekday == 6 || date.weekday == 7)
        .toList();
  }

  /// Get weekday dates for a month
  static List<DateTime> getWeekdaysInMonth(DateTime month) {
    final dates = getDatesOfMonth(month);
    return dates.where((date) => date.weekday <= 5).toList();
  }
}
