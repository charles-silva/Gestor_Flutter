// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $LoginController = BindInject(
  (i) => LoginController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginControllerBase, Store {
  final _$conexoesValuesAtom =
      Atom(name: '_LoginControllerBase.conexoesValues');

  @override
  ObservableList<List<ConexaoModel>> get conexoesValues {
    _$conexoesValuesAtom.reportRead();
    return super.conexoesValues;
  }

  @override
  set conexoesValues(ObservableList<List<ConexaoModel>> value) {
    _$conexoesValuesAtom.reportWrite(value, super.conexoesValues, () {
      super.conexoesValues = value;
    });
  }

  final _$conValueAtom = Atom(name: '_LoginControllerBase.conValue');

  @override
  ConexaoModel get conValue {
    _$conValueAtom.reportRead();
    return super.conValue;
  }

  @override
  set conValue(ConexaoModel value) {
    _$conValueAtom.reportWrite(value, super.conValue, () {
      super.conValue = value;
    });
  }

  final _$_LoginControllerBaseActionController =
      ActionController(name: '_LoginControllerBase');

  @override
  dynamic setConexao(ConexaoModel nConexao) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setConexao');
    try {
      return super.setConexao(nConexao);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConexaoLista(ObservableList<List<ConexaoModel>> lst) {
    final _$actionInfo = _$_LoginControllerBaseActionController.startAction(
        name: '_LoginControllerBase.setConexaoLista');
    try {
      return super.setConexaoLista(lst);
    } finally {
      _$_LoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
conexoesValues: ${conexoesValues},
conValue: ${conValue}
    ''';
  }
}
