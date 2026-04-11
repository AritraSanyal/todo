import 'package:flutter_riverpod/legacy.dart';
import 'package:todo/features/tasks/repositories/in_memory_task_repository.dart';
import 'package:todo/features/tasks/repositories/task_repository.dart';
import 'task_state.dart';
import 'package:todo/features/tasks/models/task.dart';
import 'package:riverpod/riverpod.dart';

// ==============================================================
// Repository Provider
// ==============================================================
final taskRepositoryProvider = Provider<TaskRepository>((ref) {
  return InMemoryTaskRepository();
});

// ==============================================================
// TASK Notifier
// ==============================================================
class TaskNotifier extends StateNotifier<TaskState> {
  final TaskRepository repository;

  TaskNotifier(this.repository) : super(const TaskState());

  /// Load all tasks
  Future<void> loadTasks() async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      final tasks = await repository.getAllTasks();
      state = state.copyWith(tasks: tasks, isLoading: false);
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  /// Add tasks
  Future<void> addTask(Task task) async {
    try {
      await repository.addTask(task);
      final tasks = await repository.getAllTasks();
      state = state.copyWith(tasks: tasks);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// Delete Tasks
  Future<void> deleteTask(String id) async {
    try {
      await repository.deleteTask(id);
      final tasks = await repository.getAllTasks();
      state = state.copyWith(tasks: tasks);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }

  /// toglle tasks
  Future<void> toggleTask(String id) async {
    try {
      final task = await repository.getTaskById(id);
      final update = task.copyWith(isCompleted: !task.isCompleted);

      await repository.updateTask(update);
      final tasks = await repository.getAllTasks();
      state = state.copyWith(tasks: tasks);
    } catch (e) {
      state = state.copyWith(error: e.toString());
    }
  }
}

// ==============================================================
// StateNotifier Provider
// ==============================================================
final taskNotifierProvider = StateNotifierProvider<TaskNotifier, TaskState>((
  ref,
) {
  final repo = ref.watch(taskRepositoryProvider);
  final notifier = TaskNotifier(repo);

  /// auto-load tasks on initialization
  notifier.loadTasks();

  return notifier;
});
