import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  String label = '';
  double size;
  bool bold;
  TextWidget({
    Key? key,
    required this.label,
    this.size = 16.0,
    this.bold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontSize: size,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
