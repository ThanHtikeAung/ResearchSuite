import 'package:flutter/material.dart';
import 'package:research_suite/DAL/dal.dart';
import 'package:research_suite/main_page.dart';

void main() {
  final db = LocalDatabase();
  db.into(db.configs).insertOnConflictUpdate(
      ConfigsCompanion.insert(key: 'version', value: '0.1'));

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
    );
  }
}
