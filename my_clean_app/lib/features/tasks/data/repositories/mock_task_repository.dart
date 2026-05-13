import '../../domain/entities/task.dart';
import '../../domain/repositories/task_repository.dart';

class MockTaskRepository implements TaskRepository {
  // Bellekte tutulacak geçici listemiz
  final List<Task> _tasks = [
    Task(id: '1', title: 'Clean Architecture Yapısını Kur', isCompleted: true),
    Task(id: '2', title: 'Cubit Mantığını Öğren', isCompleted: false),
  ];

  @override
  List<Task> getTasks() => _tasks;

  @override
  void addTask(Task task) => _tasks.add(task);

  @override
  void toggleTask(String id) {
    final task = _tasks.firstWhere((t) => t.id == id);
    task.isCompleted = !task.isCompleted;
  }
}