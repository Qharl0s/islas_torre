import 'package:flutter/material.dart';
import 'package:islas/favoritos/favorito.dart';
//import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:provider/provider.dart';
// import 'package:islas/store/isla_store.dart';
import 'package:islas/isla/isla.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final store = Provider.of<IslaStore>(context);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/30.png'))),
              child: Stack(children: const <Widget>[
                Positioned(
                    child: Text('ISLAS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.w900))),
              ])),
          ListTile(
            leading: const Icon(
              Icons.place_rounded,
              color: Color.fromRGBO(0, 52, 98, 1.0),
            ),
            title: const Text(
              'Islas',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(0, 52, 98, 1.0)),
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const IslaPage(),
                ),
                (route) => false,
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.favorite,
              color: Color.fromRGBO(0, 52, 98, 1.0),
            ),
            title: const Text(
              'Favoritos',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(0, 52, 98, 1.0)),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const FavoritoPage(),
                  ));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Color.fromRGBO(0, 52, 98, 1.0),
            ),
            title: const Text(
              'Cerrar Sesión',
              style: TextStyle(
                  fontSize: 16, color: Color.fromRGBO(0, 52, 98, 1.0)),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
