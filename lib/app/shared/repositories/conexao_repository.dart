import 'package:flutter_modular/flutter_modular.dart';
import 'package:gestor/app/custom_dio/custom_dio.dart';
import 'package:gestor/app/shared/models/conexao.dart';

part 'conexao_repository.g.dart';

@Injectable()
class ConexaoRepository extends Disposable {
  final CustomDio client;

  ConexaoRepository(this.client);

  Future<List<ConexaoModel>> getConexoes() async {
    final response = await client.get(
        '/getevento?evento=getconexao&params=09629898000136|123|9&dwwelcomemessage=OTk5OTk5');
    final parsed = (response.data["conexao"] as List)
        .map<ConexaoModel>((e) => ConexaoModel.fromJson(e))
        .toList();
    return parsed;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
