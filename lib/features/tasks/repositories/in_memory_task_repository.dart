import 'package:todo/features/tasks/models/task.dart';
import 'package:todo/features/tasks/repositories/task_repository.dart';

class InMemoryTaskRepository implements TaskRepository {
  final List<Task> _tasks = [];

  @override
  Future<List<Task>> getAllTasks() async {
    return List.unmodifiable(_tasks);
  }

  @override
  Future<Task> getTaskById(String givenId) async {
    final task = _tasks.firstWhere(
      (individualTask) => individualTask.id == givenId,
      orElse: () => throw Exception('Task Not Found'),
    );
    return task;
  }

  @override
  Future<Task> updateTask(Task task) async {
    final indexToUpdate = _tasks.indexWhere(
      (individualTask) => individualTask.id == task.id,
    );
    if (indexToUpdate == -1) throw Exception('Task Does Not Exists!');
    _tasks[indexToUpdate] = task;
    return task;
  }

  @override
  Future<Task> addTask(Task task) async {
    _tasks.add(task);
    return task;
  }

  @override
  Future<void> deleteTask(String givenId) async {
    _tasks.removeWhere((individualTask) => individualTask.id == givenId);
  }
}
