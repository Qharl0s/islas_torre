import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'store/isla_store.dart';
import 'package:islas/isla/isla.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          Provider<IslaStore>(
            create: (_) => IslaStore(),
          ),
        ],
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Número Islas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IslaPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
