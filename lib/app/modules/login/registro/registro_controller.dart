import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gestor/app/shared/db/my_database_helper.dart';
import 'package:gestor/app/shared/models/conexao.dart';
import 'package:gestor/app/shared/repositories/conexao_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'registro_controller.g.dart';

@Injectable()
class RegistroController = _RegistroControllerBase with _$RegistroController;

abstract class _RegistroControllerBase with Store {
  final ConexaoRepository repo;
  var dao = Modular.get<MyDataBaseHelper>().conexaoDAO;
  _RegistroControllerBase(this.repo);

  TextEditingController cnpjController = TextEditingController();
  TextEditingController dispositivoController = TextEditingController();

  @observable
  ObservableList<List<ConexaoModel>> conexoesValues;

  Future<bool> fillConexoes() async {
    var retorno = await repo.getConexoes().asObservable();

    if (retorno.length > 0) {
      retorno.map((e) => dao.addConexao(populaConexao(e))).toList();
      return true;
    } else {
      return false;
    }
  }

  TBConexao populaConexao(ConexaoModel model) {
    return TBConexao(
        id: null,
        idconexao: model.idconexao,
        idempresa: model.idempresa,
        descricao: model.descricao,
        cnpj: model.cnpj,
        idvendedor: model.idvendedor,
        usuario: model.nomeUsuario);
  }
}
