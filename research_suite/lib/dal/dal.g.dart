// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dal.dart';

// ignore_for_file: type=lint
class $ConfigsTable extends Configs with TableInfo<$ConfigsTable, Config> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ConfigsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key =
      GeneratedColumn<String>('key', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value =
      GeneratedColumn<String>('value', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: DriftSqlType.string,
          requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? 'configs';
  @override
  String get actualTableName => 'configs';
  @override
  VerificationContext validateIntegrity(Insertable<Config> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  Config map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Config(
      key: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}key'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}value'])!,
    );
  }

  @override
  $ConfigsTable createAlias(String alias) {
    return $ConfigsTable(attachedDatabase, alias);
  }
}

class Config extends DataClass implements Insertable<Config> {
  final String key;
  final String value;
  const Config({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  ConfigsCompanion toCompanion(bool nullToAbsent) {
    return ConfigsCompanion(
      key: Value(key),
      value: Value(value),
    );
  }

  factory Config.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Config(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  Config copyWith({String? key, String? value}) => Config(
        key: key ?? this.key,
        value: value ?? this.value,
      );
  @override
  String toString() {
    return (StringBuffer('Config(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Config && other.key == this.key && other.value == this.value);
}

class ConfigsCompanion extends UpdateCompanion<Config> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const ConfigsCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ConfigsCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  })  : key = Value(key),
        value = Value(value);
  static Insertable<Config> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ConfigsCompanion copyWith(
      {Value<String>? key, Value<String>? value, Value<int>? rowid}) {
    return ConfigsCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConfigsCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $QTypesTable extends QTypes with TableInfo<$QTypesTable, QType> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _templateMeta =
      const VerificationMeta('template');
  @override
  late final GeneratedColumn<String> template = GeneratedColumn<String>(
      'template', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title, template];
  @override
  String get aliasedName => _alias ?? 'q_types';
  @override
  String get actualTableName => 'q_types';
  @override
  VerificationContext validateIntegrity(Insertable<QType> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('template')) {
      context.handle(_templateMeta,
          template.isAcceptableOrUnknown(data['template']!, _templateMeta));
    } else if (isInserting) {
      context.missing(_templateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QType map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QType(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      template: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}template'])!,
    );
  }

  @override
  $QTypesTable createAlias(String alias) {
    return $QTypesTable(attachedDatabase, alias);
  }
}

class QType extends DataClass implements Insertable<QType> {
  final int id;
  final String title;
  final String template;
  const QType({required this.id, required this.title, required this.template});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['template'] = Variable<String>(template);
    return map;
  }

  QTypesCompanion toCompanion(bool nullToAbsent) {
    return QTypesCompanion(
      id: Value(id),
      title: Value(title),
      template: Value(template),
    );
  }

  factory QType.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QType(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      template: serializer.fromJson<String>(json['template']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'template': serializer.toJson<String>(template),
    };
  }

  QType copyWith({int? id, String? title, String? template}) => QType(
        id: id ?? this.id,
        title: title ?? this.title,
        template: template ?? this.template,
      );
  @override
  String toString() {
    return (StringBuffer('QType(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('template: $template')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, template);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QType &&
          other.id == this.id &&
          other.title == this.title &&
          other.template == this.template);
}

class QTypesCompanion extends UpdateCompanion<QType> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> template;
  const QTypesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.template = const Value.absent(),
  });
  QTypesCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String template,
  })  : title = Value(title),
        template = Value(template);
  static Insertable<QType> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? template,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (template != null) 'template': template,
    });
  }

  QTypesCompanion copyWith(
      {Value<int>? id, Value<String>? title, Value<String>? template}) {
    return QTypesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      template: template ?? this.template,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (template.present) {
      map['template'] = Variable<String>(template.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QTypesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('template: $template')
          ..write(')'))
        .toString();
  }
}

class $QSetsTable extends QSets with TableInfo<$QSetsTable, QSet> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QSetsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _db_nameMeta =
      const VerificationMeta('db_name');
  @override
  late final GeneratedColumn<String> db_name = GeneratedColumn<String>(
      'db_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, title, db_name];
  @override
  String get aliasedName => _alias ?? 'q_sets';
  @override
  String get actualTableName => 'q_sets';
  @override
  VerificationContext validateIntegrity(Insertable<QSet> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('db_name')) {
      context.handle(_db_nameMeta,
          db_name.isAcceptableOrUnknown(data['db_name']!, _db_nameMeta));
    } else if (isInserting) {
      context.missing(_db_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QSet map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QSet(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      db_name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}db_name'])!,
    );
  }

  @override
  $QSetsTable createAlias(String alias) {
    return $QSetsTable(attachedDatabase, alias);
  }
}

class QSet extends DataClass implements Insertable<QSet> {
  final int id;
  final String title;
  final String db_name;
  const QSet({required this.id, required this.title, required this.db_name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['db_name'] = Variable<String>(db_name);
    return map;
  }

  QSetsCompanion toCompanion(bool nullToAbsent) {
    return QSetsCompanion(
      id: Value(id),
      title: Value(title),
      db_name: Value(db_name),
    );
  }

  factory QSet.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QSet(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      db_name: serializer.fromJson<String>(json['db_name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'db_name': serializer.toJson<String>(db_name),
    };
  }

  QSet copyWith({int? id, String? title, String? db_name}) => QSet(
        id: id ?? this.id,
        title: title ?? this.title,
        db_name: db_name ?? this.db_name,
      );
  @override
  String toString() {
    return (StringBuffer('QSet(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('db_name: $db_name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, db_name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QSet &&
          other.id == this.id &&
          other.title == this.title &&
          other.db_name == this.db_name);
}

class QSetsCompanion extends UpdateCompanion<QSet> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> db_name;
  const QSetsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.db_name = const Value.absent(),
  });
  QSetsCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String db_name,
  })  : title = Value(title),
        db_name = Value(db_name);
  static Insertable<QSet> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? db_name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (db_name != null) 'db_name': db_name,
    });
  }

  QSetsCompanion copyWith(
      {Value<int>? id, Value<String>? title, Value<String>? db_name}) {
    return QSetsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      db_name: db_name ?? this.db_name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (db_name.present) {
      map['db_name'] = Variable<String>(db_name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QSetsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('db_name: $db_name')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDatabase extends GeneratedDatabase {
  _$LocalDatabase(QueryExecutor e) : super(e);
  late final $ConfigsTable configs = $ConfigsTable(this);
  late final $QTypesTable qTypes = $QTypesTable(this);
  late final $QSetsTable qSets = $QSetsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [configs, qTypes, qSets];
}
