// App wide constants

class AppConstants {
  // prevent instantiation
  AppConstants._();

  // App Info
  static const String appName = 'Todo';
  static const String appVersion = '1.0.0';

  // api configuration (for phase 3)
  static const String apiBaseUrl = "";
  static const Duration apiTimeout = Duration(seconds: 30);

  // Storage keys (for phase 2)
  static const String taskBoxName = 'task';
  static const String categoriesBoxName = 'categories';
  static const String userBoxName = 'user';
  static const String settingsBoxName = 'settings';

  // Default Categories (hardcoded for phase 1)
  static const List<String> defaultCategories = [
    'Work',
    'Personal',
    'Research',
    'Random',
  ];

  // Date format
  static const String dateFormat = 'dd mmm yyyy';
  static const String timeFormat = 'HH:mm'; // "05 Apr 2026, 14:30"
  static const String dateTimeFormat = 'dd mmm yyyy, HH:mm'; // "April 2026"
  static const String dayMonthFormat = 'dd MMM'; //"05 Apr"

  // Validation
  static const int minTitleLength = 1;
  static const int maxTitleLength = 100;
  static const int maxDescriptionLength = 500;
  static const int minPasswordLength = 8;
  static const int minUsernameLength = 3;

  // UI components
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double borderRadius = 12.0;
  static const double cardElevation = 2.0;

  // Animation Duration
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);

  //Debounce Duration
  static const Duration searchDebounce = Duration(milliseconds: 500);
  static const Duration typingDebounce = Duration(milliseconds: 300);

  //Pagination (for future use)
  static const int tasksPerPage = 20;
  static const int maxTaskInMemory = 1000;

  //task limit
  static const int maxTasksPerDay = 50;
  static const int maxActiveTasks = 100;

  // Calender
  static const int calendarDaysToShow = 42; // 6 weeks
  static const int startDayOfWeek = 0; // sunday = 0, monday = 1

  // Search
  static const int minSearchLength = 2;
  static const int maxSearchResult = 50;

  // Error Messages
  static const String networkError = 'No internet connection';
  static const String serverError = 'Server error. Please try again later';
  static const String unknownError = 'Something went wrong';
  static const String validationError = 'Please check you input';
  static const String tasksNotFound = 'Task not found';
  static const String emptyTasksMessages =
      'No Tasks yet. Create your first task!';
  static const String emptySearchMessage =
      'No tasks foudn matching your search';
  static const String emptyFilterMessage = 'No tasks in this category';

  // Success Messages
  static const String taskCreated = 'Task created successfully';
  static const String taskUpdated = 'Task updated successfully';
  static const String taskDeleted = 'task deleted successfully';
  static const String taskCompleted = 'Task marked as complete';
  static const String taskIncomplete = 'Task marked as incomplete';

  // Feature Flags (for gradual rollout)
  static const bool enableAnimations = true;
  static const bool enableHapticFeedback = true;
  static const bool enableNotifications = false; // phase 2 +
  static const bool enableSync = false; // Phase 3
  static const bool enableOfflineMode = false; //Phase 2+

  //Debug
  static const enableDebugLogs = true;
  static const enablePerformanceMonitoring = false; // Ena le in production

  // Regex Patterns
  static final RegExp emailRegex = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  static final RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9_]{3,20}$');
  static final RegExp passwordRegex = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d@$!%*#?&]{8,}$',
  );
}

// Routes names for navigation
class RouteNames {
  RouteNames._();

  static const String welcome = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String tasks = '/tasks';
  static const String taskDetails = '/tasks/:id';
  static const String addTask = '/tasks/new';
  static const String editTask = '/tasks/:id/edit';
  static const String categories = '/categories';
  static const String categoryTasks = '/categories/:id/tasks';
  static const String calendar = '/calendar';
  static const String settings = '/settings';
  static const String profile = '/profile';
}

// Asset Paths
class AssetPaths {
  AssetPaths._();

  //Images
  static const String logo = '';
  static const String emptyStateSvg = ''; // welcome page svg
  static const String errorStateSvg = ''; // the error svg
  static const String rightStateSvg = ''; // the right svg

  //Icons(if I decide to use custom icons)

  // Animations(if using lottie)
}
