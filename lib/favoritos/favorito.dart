import 'package:flutter/material.dart';
import 'package:islas/ui/button_widget.dart';
import 'package:islas/ui/icon_button_widget.dart';
import 'package:islas/ui/menu_lateral.dart';
import 'package:islas/ui/text_widget.dart';

class Data {
  String? img;
  String? title;
}

class FavoritoPage extends StatelessWidget {
  const FavoritoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      resizeToAvoidBottomInset: false,
      drawer: const MenuLateral(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[100],
        leading: Image.asset('assets/images/nasa.png'),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          IconButtonWidget(icon: Icons.notifications_none),
          IconButtonWidget(icon: Icons.settings_suggest_outlined),
        ],
      ),
      body: Container(
        key: key,
        decoration:
            const BoxDecoration(color: Color.fromRGBO(245, 242, 245, 1.0)),
        child: Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  TextWidget(
                    label: 'Favorites',
                    size: 45,
                    bold: true,
                  ),
                  const Spacer(),
                  IconButtonWidget(icon: Icons.add),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonWidget(label: 'All', accion: () {}),
                  ButtonWidget(
                      label: 'Happy Hours', accion: () {}, activo: true),
                  ButtonWidget(label: 'Drinks', accion: () {}),
                ],
              ),
              const Divider(
                height: 16,
                color: Colors.transparent,
              ),
              Card(
                elevation: 10,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, bottom: 20.0, top: 20.0),
                      child: Row(
                        children: [
                          TextWidget(
                            label: 'Happy Hours',
                            size: 30.0,
                          ),
                          const Spacer(),
                          IconButtonWidget(icon: Icons.delete_outline_outlined),
                        ],
                      ),
                    ),
                    listado(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButtonWidget(icon: Icons.home_outlined),
            const Spacer(),
            IconButtonWidget(icon: Icons.calendar_month),
            const Spacer(),
            IconButtonWidget(icon: Icons.search_outlined),
            const Spacer(),
            IconButtonWidget(icon: Icons.heart_broken),
            const Spacer(),
            TextWidget(
              label: 'Favoritos',
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget listado() {
    Data d1 = Data();
    d1.img = "assets/images/imagen_1.jpg";
    d1.title = "Broken Shaker at Freehand Miami";

    Data d2 = Data();
    d2.img = "assets/images/imagen_2.jpg";
    d2.title = "Esotico Miami";

    List<Data> images = [d1, d2];

    return ListView.builder(
      itemBuilder: (BuildContext build, index) {
        return Card(
          elevation: 8,
          margin: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Container(
            height: 140,
//            color: Colors.grey[100],
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey[100],
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 10.0, bottom: 20.0, left: 10.0),
              child: Row(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Expanded(
                        flex: 2,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(images[index].img.toString()),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          ListTile(
                            title: TextWidget(
                              label: images[index].title.toString(),
                              size: 25.0,
                              bold: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      itemCount: images.length,
      shrinkWrap: true,
      padding: const EdgeInsets.all(5),
      scrollDirection: Axis.vertical,
    );
  }
}
