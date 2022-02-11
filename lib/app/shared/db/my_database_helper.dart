import 'package:gestor/app/shared/db/dao/ConexaoDAO.dart';
import 'package:gestor/app/shared/db/models/tb_conexoes_model.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'my_database_helper.g.dart';

@UseMoor(tables: [TBConexoes], daos: [ConexaoDAO])
class MyDataBaseHelper extends _$MyDataBaseHelper {
  static MyDataBaseHelper instance = MyDataBaseHelper._internal();

  ConexaoDAO conexaoDAO;

  MyDataBaseHelper._internal()
      : super(FlutterQueryExecutor.inDatabaseFolder(path: 'zGestor.db')) {
    conexaoDAO = ConexaoDAO(this);
  }

  @override
  int get schemaVersion => 1;
}
