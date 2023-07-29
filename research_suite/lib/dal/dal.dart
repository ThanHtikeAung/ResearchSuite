import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'dal.g.dart';

class Configs extends Table {
  TextColumn get key => text().withLength(min: 1)();
  TextColumn get value => text().withLength(min: 1)();

  @override
  Set<Column> get primaryKey => {key};
}

class QTypes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get template => text()();
}

class QSets extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get db_name => text()();
}

@DriftDatabase(tables: [Configs, QTypes, QSets])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));

    return NativeDatabase.createInBackground(file);
  });
}
