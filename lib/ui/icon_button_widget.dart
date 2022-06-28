import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconButtonWidget extends StatelessWidget {
  IconData icon;
  IconButtonWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(35.0),
      ),
      child: SizedBox(
        width: 45,
        height: 45,
        child: Icon(
          icon,
          color: Colors.black87,
          size: 28,
        ),
      ),
    );
  }
}
