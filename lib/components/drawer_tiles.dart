import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DrawerTiles extends StatelessWidget {
  String iconTitle;
  IconData icon;
  DrawerTiles({super.key, required this.iconTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(iconTitle, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
