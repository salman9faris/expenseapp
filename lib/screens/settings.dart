import 'package:expensetracker/constants/constant.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        child: Text(
          "Settings",
          style: kWelcometext,
        ));
  }
}
