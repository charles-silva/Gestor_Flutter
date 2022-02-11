import 'package:gestor/app/shared/db/models/tb_conexoes_model.dart';
import 'package:gestor/app/shared/db/my_database_helper.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'ConexaoDAO.g.dart';

@UseDao(tables: [TBConexoes])
class ConexaoDAO extends DatabaseAccessor<MyDataBaseHelper> with _$ConexaoDAOMixin {
  ConexaoDAO(MyDataBaseHelper db) : super(db);

  Stream<List<TBConexao>> getAll() {
    return select(tBConexoes).watch();
  }

  Future addConexao(TBConexao entity) {
    return into(tBConexoes).insert(entity);
  }

  Future updateConexao(TBConexao entity) {
    return update(tBConexoes).replace(entity);
  }

  Future removeConexao(TBConexao entity) {
    return delete(tBConexoes).delete(entity);
    // return (delete(conexoes)..where((con) => con.id.equals(entity.id))).go();
  }

  // Future deleteTask(Conexao task) => delete().delete(task);
}
