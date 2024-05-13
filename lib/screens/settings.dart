import 'package:expensetracker/constants/constant.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          child: Text(
            "Settings",
            style: kWelcometext,
          ),
        ),
        Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assests/images/user.jpg",
                ),
                fit: BoxFit.contain),
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
