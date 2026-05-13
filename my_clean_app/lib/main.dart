import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/tasks/data/repositories/mock_task_repository.dart';
import 'features/tasks/presentation/cubits/task_cubit.dart';
import 'features/tasks/presentation/pages/dashboard_page.dart';
import 'features/tasks/presentation/pages/task_list_page.dart';
import 'features/tasks/presentation/pages/add_task_page.dart';

void main() {
  // 1. Data katmanını oluştur
  final taskRepository = MockTaskRepository();

  runApp(
    // 2. Cubit'i tüm uygulamaya sağla (Provide)
    BlocProvider(
      create: (context) => TaskCubit(taskRepository),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clean Architecture Cubit',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      // 3. Rotaları tanımla
      initialRoute: '/',
      routes: {
        '/': (context) => DashboardPage(),
        '/list': (context) => TaskListPage(),
        '/add': (context) => AddTaskPage(),
      },
    );
  }
}