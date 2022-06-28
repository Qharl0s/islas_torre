import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String label = '';
  Function accion;
  bool activo;
  ButtonWidget({
    Key? key,
    required this.label,
    required this.accion,
    this.activo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // ignore: unnecessary_null_comparison
      onPressed: () {
        accion();
      },
      style: ButtonStyle(
        backgroundColor: activo
            ? MaterialStateProperty.all(Colors.orange)
            : MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(15),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          label,
          style: TextStyle(
            color: activo ? Colors.white : Colors.black,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
