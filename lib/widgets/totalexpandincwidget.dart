import 'dart:ffi';

import 'package:expensetracker/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandIncrow extends StatelessWidget {
  const ExpandIncrow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Totalexpinc(
            title: "Expneses",
            amount: 12033,
            cardcolor: kCardbgeinc,
            cardicon: Icons.trending_down_outlined,
            cardiconcolor: kCardiconexp,
          ),
          Totalexpinc(
            title: "Income",
            amount: 12033,
            cardcolor: kCardbgexp,
            cardicon: Icons.trending_up_outlined,
            cardiconcolor: kCardiconinc,
          ),
        ],
      ),
    );
  }
}

class Totalexpinc extends StatelessWidget {
  Totalexpinc(
      {super.key,
      required this.title,
      required this.amount,
      required this.cardcolor,
      required this.cardicon,
      required this.cardiconcolor});

  String title;
  int amount;
  Color cardcolor;
  IconData cardicon;
  Color cardiconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * .45,
      height: MediaQuery.of(context).size.height * .10,
      decoration: BoxDecoration(
          color: cardcolor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kCatcardboarder)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title",
                style: kCardHeading,
              ),
              Icon(
                cardicon,
                color: cardiconcolor,
                size: 30,
              )
            ],
          ),
          Text(
            "$amount INR",
            style: kCardsubheading,
          ),
        ],
      ),
    );
  }
}
