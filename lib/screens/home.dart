import 'dart:ffi';

import 'package:expensetracker/widgets/balancecardwidget.dart';
import 'package:expensetracker/widgets/catitemwidget.dart';
import 'package:expensetracker/widgets/totalexpandincwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/constant.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.only(bottom: 60, left: 0, right: 0, top: 0),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Good Evening,", style: kWelcometext),
            const SizedBox(
              height: 10,
            ),
            const Balancecard(),
            const SizedBox(
              height: 10,
            ),
            const ExpandIncrow(),
            const Divider(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories ", style: kInterimheading),
                Text("May ", style: kInterimheading),
              ],
            ),
            Categorywidget(
                categorytem: "Drinks & food",
                categorytemexp: 2302,
                categorytemcolor: kDrinks,
                categorytemicon: Icons.fastfood_sharp),
            Categorywidget(
                categorytem: "Entertainement",
                categorytemexp: 4202,
                categorytemcolor: kEntertainment,
                categorytemicon: Icons.beach_access_outlined),
            Categorywidget(
                categorytem: "Miscellaneous",
                categorytemexp: 102,
                categorytemcolor: kmiscellaneous,
                categorytemicon: Icons.miscellaneous_services_outlined),
            Categorywidget(
                categorytem: "Bills",
                categorytemexp: 1302,
                categorytemcolor: kBill,
                categorytemicon: Icons.menu_book),
            Categorywidget(
                categorytem: " Drinks & food",
                categorytemexp: 1302,
                categorytemcolor: kDrinks,
                categorytemicon: Icons.fastfood_sharp),
            Categorywidget(
                categorytem: " Transportation",
                categorytemexp: 1302,
                categorytemcolor: kTransportation,
                categorytemicon: Icons.commute_sharp),
          ],
        ),
      ),
    );
  }
}
