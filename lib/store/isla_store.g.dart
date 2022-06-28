// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isla_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IslaStore on _IslaStore, Store {
  late final _$numeroIslasAtom =
      Atom(name: '_IslaStore.numeroIslas', context: context);

  @override
  int get numeroIslas {
    _$numeroIslasAtom.reportRead();
    return super.numeroIslas;
  }

  @override
  set numeroIslas(int value) {
    _$numeroIslasAtom.reportWrite(value, super.numeroIslas, () {
      super.numeroIslas = value;
    });
  }

  late final _$numeroFilasAtom =
      Atom(name: '_IslaStore.numeroFilas', context: context);

  @override
  int get numeroFilas {
    _$numeroFilasAtom.reportRead();
    return super.numeroFilas;
  }

  @override
  set numeroFilas(int value) {
    _$numeroFilasAtom.reportWrite(value, super.numeroFilas, () {
      super.numeroFilas = value;
    });
  }

  late final _$matrizAtom = Atom(name: '_IslaStore.matriz', context: context);

  @override
  List<List<int>>? get matriz {
    _$matrizAtom.reportRead();
    return super.matriz;
  }

  @override
  set matriz(List<List<int>>? value) {
    _$matrizAtom.reportWrite(value, super.matriz, () {
      super.matriz = value;
    });
  }

  late final _$generarMatrizAsyncAction =
      AsyncAction('_IslaStore.generarMatriz', context: context);

  @override
  Future<void> generarMatriz() {
    return _$generarMatrizAsyncAction.run(() => super.generarMatriz());
  }

  late final _$contarIslasAsyncAction =
      AsyncAction('_IslaStore.contarIslas', context: context);

  @override
  Future<void> contarIslas() {
    return _$contarIslasAsyncAction.run(() => super.contarIslas());
  }

  late final _$visitarIslaAsyncAction =
      AsyncAction('_IslaStore.visitarIsla', context: context);

  @override
  Future<void> visitarIsla(int i, int j) {
    return _$visitarIslaAsyncAction.run(() => super.visitarIsla(i, j));
  }

  late final _$cambiarvalorAsyncAction =
      AsyncAction('_IslaStore.cambiarvalor', context: context);

  @override
  Future<void> cambiarvalor(int pos) {
    return _$cambiarvalorAsyncAction.run(() => super.cambiarvalor(pos));
  }

  late final _$_IslaStoreActionController =
      ActionController(name: '_IslaStore', context: context);

  @override
  String getValorMatriz(int pos) {
    final _$actionInfo = _$_IslaStoreActionController.startAction(
        name: '_IslaStore.getValorMatriz');
    try {
      return super.getValorMatriz(pos);
    } finally {
      _$_IslaStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
numeroIslas: ${numeroIslas},
numeroFilas: ${numeroFilas},
matriz: ${matriz}
    ''';
  }
}
