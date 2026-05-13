import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/task.dart';
import '../../domain/repositories/task_repository.dart';

class TaskCubit extends Cubit<List<Task>> {
  final TaskRepository repository;

  // Başlangıçta repository'den mevcut görevleri alıyoruz
  TaskCubit(this.repository) : super(List.from(repository.getTasks()));

  // Listeyi yenileyip tüm sayfalarla paylaşan metod
  void _refresh() {
    emit(List.from(repository.getTasks()));
  }

  void addNewTask(String title) {
    if (title.isEmpty) return;
    final newTask = Task(id: DateTime.now().toString(), title: title);
    repository.addTask(newTask);
    _refresh();
  }

  void toggleStatus(String id) {
    repository.toggleTask(id);
    _refresh();
  }
}