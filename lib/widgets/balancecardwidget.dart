import 'package:expensetracker/constants/constant.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Balancecard extends StatelessWidget {
  const Balancecard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: kCardbal,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Balance",
                style: kbalCardheading,
              ),
              Balancerow(title: "Bank", balance: 2314),
              Balancerow(title: "Card", balance: 5232),
            ],
          ),
        ),
      ),
    );
  }
}

class Balancerow extends StatelessWidget {
  Balancerow({super.key, required this.title, required this.balance});

  String title;
  int balance;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const FaIcon(
              FontAwesomeIcons.buildingColumns,
              color: Colors.white,
              size: 18,
            ),
            Text(
              " $title",
              style: kbalCardheading,
            ),
          ],
        ),
        const SizedBox(
          width: 60,
        ),
        Text(
          "$balance INR",
          style: kbalCardsubheading,
        )
      ],
    );
  }
}
