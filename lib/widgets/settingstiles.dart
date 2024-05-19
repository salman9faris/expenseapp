import 'package:flutter/material.dart';

class Settings_list extends StatelessWidget {
  Settings_list({
    required this.title,
    this.icon,
  });

  String title;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Color.fromARGB(255, 230, 147, 147),
        size: 24,
      ),
      tileColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 11, 11, 11),
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
