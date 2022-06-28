// ignore_for_file: library_private_types_in_public_api, unrelated_type_equality_checks
import 'dart:math';

import 'package:mobx/mobx.dart';

part 'isla_store.g.dart';

class IslaStore = _IslaStore with _$IslaStore;

abstract class _IslaStore with Store {
  var rng = Random();

  @observable
  int numeroIslas = 0;

  @observable
  int numeroFilas = 6;

  @observable
  List<List<int>>? matriz;

  int iteracion = 1;

  @action
  Future<void> generarMatriz() async {
    iteracion = 1;
    matriz = List.generate(
        numeroFilas, (_) => List.generate(numeroFilas, (_) => rng.nextInt(2)));
  }

  @action
  String getValorMatriz(int pos) {
    int i = pos ~/ numeroFilas;
    int j = pos % numeroFilas;
    return (matriz![i][j]).toString();
  }

  @action
  Future<void> contarIslas() async {
    int nIslas = 0;
    for (int i = 0; i < matriz!.length; i++) {
      for (int j = 0; j < matriz!.length; j++) {
        if (matriz![i][j] == iteracion) {
          visitarIsla(i, j);
          nIslas++;
        }
      }
    }
    numeroIslas = nIslas;
    iteracion = iteracion + 1;
  }

  @action
  Future<void> visitarIsla(int i, int j) async {
    if (i < 0 ||
        i >= matriz!.length ||
        j < 0 ||
        j >= matriz!.length ||
        matriz![i][j] != iteracion) return;
    matriz![i][j] = iteracion + 1;
    visitarIsla(i - 1, j);
    visitarIsla(i + 1, j);
    visitarIsla(i, j - 1);
    visitarIsla(i, j + 1);
  }

  @action
  Future<void> cambiarvalor(int pos) async {
    int i = pos ~/ numeroFilas;
    int j = pos % numeroFilas;
    if (matriz![i][j] == 0) {
      matriz![i][j] = iteracion;
    } else {
      matriz![i][j] = 0;
    }
  }
}
