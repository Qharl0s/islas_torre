import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:islas/ui/celda.dart';
import 'package:islas/ui/text_widget.dart';
import 'package:provider/provider.dart';
import 'package:islas/store/isla_store.dart';
import 'package:islas/ui/menu_lateral.dart';
import 'package:islas/ui/button_widget.dart';

class IslaPage extends StatelessWidget {
  const IslaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<IslaStore>(context);

    store.generarMatriz();
    store.contarIslas();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: const MenuLateral(),
      appBar: AppBar(
        title: TextWidget(
          label: 'Islas',
          bold: true,
          size: 23,
        ),
      ),
      body: Card(
        child: Column(
          children: [
            datosWidget(context),
            pintarMatriz(context),
          ],
        ),
      ),
    );
  }

  Widget pintarMatriz(BuildContext context) {
    final store = Provider.of<IslaStore>(context);
    ScrollController scrollController = ScrollController();
    return Container(
        alignment: Alignment.center,
        child: Observer(
          builder: (context) {
            return GridView.builder(
                scrollDirection: Axis.vertical,
                controller: scrollController,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: store.numeroFilas,
                ),
                itemCount: store.numeroFilas * store.numeroFilas,
                itemBuilder: (BuildContext context, int index) {
                  return CeldaPage(
                    valor: store.getValorMatriz(index).toString(),
                    pos: index,
                  );
                });
          },
        ));
  }

  Widget datosWidget(BuildContext context) {
    final store = Provider.of<IslaStore>(context);
    TextEditingController dimensionController = TextEditingController();
    dimensionController.text = store.numeroFilas.toString();
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextField(
                controller: dimensionController,
              ),
            ),
            const Spacer(),
            ButtonWidget(
              label: 'Generar',
              accion: () {
                store.numeroFilas = int.parse(dimensionController.text);
                store.generarMatriz().then((value) {
                  store.contarIslas();
                });
              },
            ),
            const Spacer(),
            ButtonWidget(
              label: 'Contar',
              accion: () {
                store.contarIslas();
              },
            ),
          ],
        ),
        const Divider(
          height: 15,
          color: Colors.transparent,
        ),
        Row(
          children: [
            TextWidget(
              label: 'Número de Islas: ',
              size: 20.0,
            ),
            Observer(
              builder: (context) {
                return TextWidget(
                  label: store.numeroIslas.toString(),
                  size: 20.0,
                  bold: true,
                );
              },
            ),
          ],
        ),
        const Divider(
          height: 10,
          color: Colors.transparent,
        ),
      ],
    );
  }
}
