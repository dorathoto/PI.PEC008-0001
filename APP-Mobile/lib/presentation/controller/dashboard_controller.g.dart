// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardController on _DashboardController, Store {
  final _$emptyLocalizacoesAtom =
      Atom(name: '_DashboardController.emptyLocalizacoes');

  @override
  bool get emptyLocalizacoes {
    _$emptyLocalizacoesAtom.reportRead();
    return super.emptyLocalizacoes;
  }

  @override
  set emptyLocalizacoes(bool value) {
    _$emptyLocalizacoesAtom.reportWrite(value, super.emptyLocalizacoes, () {
      super.emptyLocalizacoes = value;
    });
  }

  final _$sendLatLngAsyncAction =
      AsyncAction('_DashboardController.sendLatLng');

  @override
  Future<bool> sendLatLng() {
    return _$sendLatLngAsyncAction.run(() => super.sendLatLng());
  }

  @override
  String toString() {
    return '''
emptyLocalizacoes: ${emptyLocalizacoes}
    ''';
  }
}
