import 'package:flutter/material.dart';

class ItemTags extends StatelessWidget {
  final bool color;
  final String name;

  ItemTags(this.color, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    if (color) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.cyan, // `Color(0xFF5EDFFF)` o'rniga `Colors.cyan` ishlatilgan
          child: Text(
            name, // "Barjasi" o'rniga name o'zgaruvchisini ishlatdim
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name, // "Barjasi" o'rniga name o'zgaruvchisini ishlatdim
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    }
  }
}
