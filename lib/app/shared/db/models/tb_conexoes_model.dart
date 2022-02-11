import 'package:moor_flutter/moor_flutter.dart';

@DataClassName('TBConexao')
class TBConexoes extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idconexao => integer()();
  IntColumn get idvendedor => integer()();
  IntColumn get idempresa => integer()();
  TextColumn get descricao => text()();
  TextColumn get cnpj => text()();
  TextColumn get usuario => text()();
}
