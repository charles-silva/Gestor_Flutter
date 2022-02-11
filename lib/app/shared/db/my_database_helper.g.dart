// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_database_helper.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class TBConexao extends DataClass implements Insertable<TBConexao> {
  final int id;
  final int idconexao;
  final int idvendedor;
  final int idempresa;
  final String descricao;
  final String cnpj;
  final String usuario;
  TBConexao(
      {@required this.id,
      @required this.idconexao,
      @required this.idvendedor,
      @required this.idempresa,
      @required this.descricao,
      @required this.cnpj,
      @required this.usuario});
  factory TBConexao.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return TBConexao(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      idconexao:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idconexao']),
      idvendedor:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idvendedor']),
      idempresa:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}idempresa']),
      descricao: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}descricao']),
      cnpj: stringType.mapFromDatabaseResponse(data['${effectivePrefix}cnpj']),
      usuario:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}usuario']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || idconexao != null) {
      map['idconexao'] = Variable<int>(idconexao);
    }
    if (!nullToAbsent || idvendedor != null) {
      map['idvendedor'] = Variable<int>(idvendedor);
    }
    if (!nullToAbsent || idempresa != null) {
      map['idempresa'] = Variable<int>(idempresa);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || cnpj != null) {
      map['cnpj'] = Variable<String>(cnpj);
    }
    if (!nullToAbsent || usuario != null) {
      map['usuario'] = Variable<String>(usuario);
    }
    return map;
  }

  TBConexoesCompanion toCompanion(bool nullToAbsent) {
    return TBConexoesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      idconexao: idconexao == null && nullToAbsent
          ? const Value.absent()
          : Value(idconexao),
      idvendedor: idvendedor == null && nullToAbsent
          ? const Value.absent()
          : Value(idvendedor),
      idempresa: idempresa == null && nullToAbsent
          ? const Value.absent()
          : Value(idempresa),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      cnpj: cnpj == null && nullToAbsent ? const Value.absent() : Value(cnpj),
      usuario: usuario == null && nullToAbsent
          ? const Value.absent()
          : Value(usuario),
    );
  }

  factory TBConexao.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return TBConexao(
      id: serializer.fromJson<int>(json['id']),
      idconexao: serializer.fromJson<int>(json['idconexao']),
      idvendedor: serializer.fromJson<int>(json['idvendedor']),
      idempresa: serializer.fromJson<int>(json['idempresa']),
      descricao: serializer.fromJson<String>(json['descricao']),
      cnpj: serializer.fromJson<String>(json['cnpj']),
      usuario: serializer.fromJson<String>(json['usuario']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idconexao': serializer.toJson<int>(idconexao),
      'idvendedor': serializer.toJson<int>(idvendedor),
      'idempresa': serializer.toJson<int>(idempresa),
      'descricao': serializer.toJson<String>(descricao),
      'cnpj': serializer.toJson<String>(cnpj),
      'usuario': serializer.toJson<String>(usuario),
    };
  }

  TBConexao copyWith(
          {int id,
          int idconexao,
          int idvendedor,
          int idempresa,
          String descricao,
          String cnpj,
          String usuario}) =>
      TBConexao(
        id: id ?? this.id,
        idconexao: idconexao ?? this.idconexao,
        idvendedor: idvendedor ?? this.idvendedor,
        idempresa: idempresa ?? this.idempresa,
        descricao: descricao ?? this.descricao,
        cnpj: cnpj ?? this.cnpj,
        usuario: usuario ?? this.usuario,
      );
  @override
  String toString() {
    return (StringBuffer('TBConexao(')
          ..write('id: $id, ')
          ..write('idconexao: $idconexao, ')
          ..write('idvendedor: $idvendedor, ')
          ..write('idempresa: $idempresa, ')
          ..write('descricao: $descricao, ')
          ..write('cnpj: $cnpj, ')
          ..write('usuario: $usuario')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          idconexao.hashCode,
          $mrjc(
              idvendedor.hashCode,
              $mrjc(
                  idempresa.hashCode,
                  $mrjc(descricao.hashCode,
                      $mrjc(cnpj.hashCode, usuario.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is TBConexao &&
          other.id == this.id &&
          other.idconexao == this.idconexao &&
          other.idvendedor == this.idvendedor &&
          other.idempresa == this.idempresa &&
          other.descricao == this.descricao &&
          other.cnpj == this.cnpj &&
          other.usuario == this.usuario);
}

class TBConexoesCompanion extends UpdateCompanion<TBConexao> {
  final Value<int> id;
  final Value<int> idconexao;
  final Value<int> idvendedor;
  final Value<int> idempresa;
  final Value<String> descricao;
  final Value<String> cnpj;
  final Value<String> usuario;
  const TBConexoesCompanion({
    this.id = const Value.absent(),
    this.idconexao = const Value.absent(),
    this.idvendedor = const Value.absent(),
    this.idempresa = const Value.absent(),
    this.descricao = const Value.absent(),
    this.cnpj = const Value.absent(),
    this.usuario = const Value.absent(),
  });
  TBConexoesCompanion.insert({
    this.id = const Value.absent(),
    @required int idconexao,
    @required int idvendedor,
    @required int idempresa,
    @required String descricao,
    @required String cnpj,
    @required String usuario,
  })  : idconexao = Value(idconexao),
        idvendedor = Value(idvendedor),
        idempresa = Value(idempresa),
        descricao = Value(descricao),
        cnpj = Value(cnpj),
        usuario = Value(usuario);
  static Insertable<TBConexao> custom({
    Expression<int> id,
    Expression<int> idconexao,
    Expression<int> idvendedor,
    Expression<int> idempresa,
    Expression<String> descricao,
    Expression<String> cnpj,
    Expression<String> usuario,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idconexao != null) 'idconexao': idconexao,
      if (idvendedor != null) 'idvendedor': idvendedor,
      if (idempresa != null) 'idempresa': idempresa,
      if (descricao != null) 'descricao': descricao,
      if (cnpj != null) 'cnpj': cnpj,
      if (usuario != null) 'usuario': usuario,
    });
  }

  TBConexoesCompanion copyWith(
      {Value<int> id,
      Value<int> idconexao,
      Value<int> idvendedor,
      Value<int> idempresa,
      Value<String> descricao,
      Value<String> cnpj,
      Value<String> usuario}) {
    return TBConexoesCompanion(
      id: id ?? this.id,
      idconexao: idconexao ?? this.idconexao,
      idvendedor: idvendedor ?? this.idvendedor,
      idempresa: idempresa ?? this.idempresa,
      descricao: descricao ?? this.descricao,
      cnpj: cnpj ?? this.cnpj,
      usuario: usuario ?? this.usuario,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idconexao.present) {
      map['idconexao'] = Variable<int>(idconexao.value);
    }
    if (idvendedor.present) {
      map['idvendedor'] = Variable<int>(idvendedor.value);
    }
    if (idempresa.present) {
      map['idempresa'] = Variable<int>(idempresa.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (cnpj.present) {
      map['cnpj'] = Variable<String>(cnpj.value);
    }
    if (usuario.present) {
      map['usuario'] = Variable<String>(usuario.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TBConexoesCompanion(')
          ..write('id: $id, ')
          ..write('idconexao: $idconexao, ')
          ..write('idvendedor: $idvendedor, ')
          ..write('idempresa: $idempresa, ')
          ..write('descricao: $descricao, ')
          ..write('cnpj: $cnpj, ')
          ..write('usuario: $usuario')
          ..write(')'))
        .toString();
  }
}

class $TBConexoesTable extends TBConexoes
    with TableInfo<$TBConexoesTable, TBConexao> {
  final GeneratedDatabase _db;
  final String _alias;
  $TBConexoesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idconexaoMeta = const VerificationMeta('idconexao');
  GeneratedIntColumn _idconexao;
  @override
  GeneratedIntColumn get idconexao => _idconexao ??= _constructIdconexao();
  GeneratedIntColumn _constructIdconexao() {
    return GeneratedIntColumn(
      'idconexao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idvendedorMeta = const VerificationMeta('idvendedor');
  GeneratedIntColumn _idvendedor;
  @override
  GeneratedIntColumn get idvendedor => _idvendedor ??= _constructIdvendedor();
  GeneratedIntColumn _constructIdvendedor() {
    return GeneratedIntColumn(
      'idvendedor',
      $tableName,
      false,
    );
  }

  final VerificationMeta _idempresaMeta = const VerificationMeta('idempresa');
  GeneratedIntColumn _idempresa;
  @override
  GeneratedIntColumn get idempresa => _idempresa ??= _constructIdempresa();
  GeneratedIntColumn _constructIdempresa() {
    return GeneratedIntColumn(
      'idempresa',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descricaoMeta = const VerificationMeta('descricao');
  GeneratedTextColumn _descricao;
  @override
  GeneratedTextColumn get descricao => _descricao ??= _constructDescricao();
  GeneratedTextColumn _constructDescricao() {
    return GeneratedTextColumn(
      'descricao',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cnpjMeta = const VerificationMeta('cnpj');
  GeneratedTextColumn _cnpj;
  @override
  GeneratedTextColumn get cnpj => _cnpj ??= _constructCnpj();
  GeneratedTextColumn _constructCnpj() {
    return GeneratedTextColumn(
      'cnpj',
      $tableName,
      false,
    );
  }

  final VerificationMeta _usuarioMeta = const VerificationMeta('usuario');
  GeneratedTextColumn _usuario;
  @override
  GeneratedTextColumn get usuario => _usuario ??= _constructUsuario();
  GeneratedTextColumn _constructUsuario() {
    return GeneratedTextColumn(
      'usuario',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, idconexao, idvendedor, idempresa, descricao, cnpj, usuario];
  @override
  $TBConexoesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 't_b_conexoes';
  @override
  final String actualTableName = 't_b_conexoes';
  @override
  VerificationContext validateIntegrity(Insertable<TBConexao> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('idconexao')) {
      context.handle(_idconexaoMeta,
          idconexao.isAcceptableOrUnknown(data['idconexao'], _idconexaoMeta));
    } else if (isInserting) {
      context.missing(_idconexaoMeta);
    }
    if (data.containsKey('idvendedor')) {
      context.handle(
          _idvendedorMeta,
          idvendedor.isAcceptableOrUnknown(
              data['idvendedor'], _idvendedorMeta));
    } else if (isInserting) {
      context.missing(_idvendedorMeta);
    }
    if (data.containsKey('idempresa')) {
      context.handle(_idempresaMeta,
          idempresa.isAcceptableOrUnknown(data['idempresa'], _idempresaMeta));
    } else if (isInserting) {
      context.missing(_idempresaMeta);
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao'], _descricaoMeta));
    } else if (isInserting) {
      context.missing(_descricaoMeta);
    }
    if (data.containsKey('cnpj')) {
      context.handle(
          _cnpjMeta, cnpj.isAcceptableOrUnknown(data['cnpj'], _cnpjMeta));
    } else if (isInserting) {
      context.missing(_cnpjMeta);
    }
    if (data.containsKey('usuario')) {
      context.handle(_usuarioMeta,
          usuario.isAcceptableOrUnknown(data['usuario'], _usuarioMeta));
    } else if (isInserting) {
      context.missing(_usuarioMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TBConexao map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return TBConexao.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TBConexoesTable createAlias(String alias) {
    return $TBConexoesTable(_db, alias);
  }
}

abstract class _$MyDataBaseHelper extends GeneratedDatabase {
  _$MyDataBaseHelper(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $TBConexoesTable _tBConexoes;
  $TBConexoesTable get tBConexoes => _tBConexoes ??= $TBConexoesTable(this);
  ConexaoDAO _conexaoDAO;
  ConexaoDAO get conexaoDAO =>
      _conexaoDAO ??= ConexaoDAO(this as MyDataBaseHelper);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [tBConexoes];
}
