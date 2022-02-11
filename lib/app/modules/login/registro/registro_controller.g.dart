// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registro_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $RegistroController = BindInject(
  (i) => RegistroController(i<ConexaoRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistroController on _RegistroControllerBase, Store {
  final _$conexoesValuesAtom =
      Atom(name: '_RegistroControllerBase.conexoesValues');

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

  @override
  String toString() {
    return '''
conexoesValues: ${conexoesValues}
    ''';
  }
}
