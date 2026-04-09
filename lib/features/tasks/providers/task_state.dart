import 'package:todo/features/tasks/models/task.dart';

class TaskState {
  // states of the task
  final List<Task> tasks;
  final bool isLoading;
  final String? error;

  static const _noChange = Object();

  // Constructor
  const TaskState({this.tasks = const [], this.isLoading = false, this.error});

  // copy with function
  TaskState copyWith({
    List<Task>? tasks,
    bool? isLoading,
    Object? error = _noChange,
  }) {
    return TaskState(
      tasks: tasks ?? this.tasks,
      isLoading: isLoading ?? this.isLoading,
      error: error == _noChange ? this.error : error as String?,
    );
  }
}
