// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:islas/store/isla_store.dart';

class CeldaPage extends StatefulWidget {
  String valor;
  final int pos;
  CeldaPage({Key? key, required this.valor, required this.pos});

  @override
  // ignore: library_private_types_in_public_api
  _CeldaPageWidget createState() {
    return _CeldaPageWidget();
  }
}

class _CeldaPageWidget extends State<CeldaPage> {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<IslaStore>(context);
    return GestureDetector(
      child: Observer(
        builder: (context) {
          return Card(
            color: widget.valor == '0' ? Colors.blue : Colors.amber,
            child: Container(),
          );
        },
      ),
      onTap: () {
        store.cambiarvalor(widget.pos);
        setState(() {
          widget.valor = store.getValorMatriz(widget.pos).toString();
        });
      },
    );
  }
}
