import 'package:expensetracker/constants/constant.dart';
import 'package:flutter/material.dart';

class Analysis extends StatelessWidget {
  const Analysis({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(8),
        child: Text(
          "Wallet",
          style: kWelcometext,
        ));
  }
}
