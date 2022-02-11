import 'package:gestor/app/shared/db/my_database_helper.dart';
import 'package:gestor/app/shared/models/conexao.dart';
import 'package:logger/logger.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final Logger logger = Logger();

  @observable
  ObservableList<List<ConexaoModel>> conexoesValues;

  @observable
  ConexaoModel conValue;

  @action
  setConexao(ConexaoModel nConexao) => conValue = nConexao;

  @action
  setConexaoLista(ObservableList<List<ConexaoModel>> lst) {
    conexoesValues = lst;
  }

  checkConexao() async {
    var dao = Modular.get<MyDataBaseHelper>().conexaoDAO;
    dao.getAll().listen((event) {
      if (event.length == 0) {
        logger.d("device não registrado!");
        Modular.to.pushNamed('login/registro');
      } else {
        List<ConexaoModel> lst = List();
        event.forEach((f) {
          var c = populaConexao(f);
          lst.add(c);
        });
        ObservableList<List<ConexaoModel>> conlst = ObservableList();
        conlst.add(lst);
        setConexaoLista(conlst);
      }
    });
  }

  validarUsuario() async {
    bool conexao = await checkConexao();
    if (!conexao) {
      Modular.to.pushNamed('registro');
    }
  }

  ConexaoModel populaConexao(TBConexao model) {
    return ConexaoModel(
        idconexao: model.idconexao,
        idempresa: model.idempresa,
        descricao: model.descricao,
        cnpj: model.cnpj,
        idvendedor: model.idvendedor,
        nomeUsuario: model.usuario);
  }
}
