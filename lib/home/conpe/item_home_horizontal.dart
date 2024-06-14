import 'package:flutter/material.dart';

class ItemHomeHorizontal extends StatelessWidget {
  final String name;
  final String region;
  final String icon;

  ItemHomeHorizontal(this.name, this.region, this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),

      child: Container(
        width: 120, // Width of the container
        height: 90, // Height of the container
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(icon),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(8.0),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$name\n',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                TextSpan(
                  text: region,
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
