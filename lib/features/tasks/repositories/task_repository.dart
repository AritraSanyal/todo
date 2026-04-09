import 'package:todo/features/tasks/models/task.dart';

abstract class TaskRepository {
  Future<List<Task>> getAllTasks();
  Future<Task> getTaskById(String id);
  Future<Task> addTask(Task task);
  Future<Task> updateTask(Task task);
  Future<void> deleteTask(String id);
}
