import 'package:expensetracker/constants/constant.dart';
import 'package:expensetracker/widgets/catitemwidget.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: [
        Container(
          margin: EdgeInsets.all(8),
          child: Text(
            "Transactions",
            style: kWelcometext,
          ),
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
    );
  }
}
