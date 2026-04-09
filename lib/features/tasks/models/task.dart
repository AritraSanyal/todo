import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';

@freezed
class Task with _$Task {
  const factory Task({
    // core
    required String id,
    required String title,
    String? description,
    @Default(false) bool isCompleted,

    //metadata
    required DateTime createdAt,
    required DateTime taskDate,

    // Classification
    String? categoryId,
    @Default([]) List<String> tags,
  }) = _Task;
}
