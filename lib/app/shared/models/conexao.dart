class ConexaoModel {
  int idconexao;
  String descricao;
  String cnpj;
  String nomeUsuario;
  int idvendedor;
  int idempresa;

  ConexaoModel(
      {this.idconexao,
      this.descricao,
      this.cnpj,
      this.nomeUsuario,
      this.idvendedor,
      this.idempresa});

  ConexaoModel.fromJson(Map<String, dynamic> json) {
    idconexao = json['idconexao'];
    descricao = json['descricao'];
    cnpj = json['cnpj'];
    nomeUsuario = json['nome_usuario'];
    idvendedor = json['idvendedor'];
    idempresa = json['idempresa'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idconexao'] = this.idconexao;
    data['descricao'] = this.descricao;
    data['cnpj'] = this.cnpj;
    data['nome_usuario'] = this.nomeUsuario;
    data['idvendedor'] = this.idvendedor;
    data['idempresa'] = this.idempresa;
    return data;
  }
}
