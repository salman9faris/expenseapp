import 'package:expensetracker/constants/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DataInput extends StatelessWidget {
  const DataInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expincsel(
              icon: Icons.trending_down_outlined,
              cardiconcolor: Colors.redAccent,
              title: "expenses",
            ),
            SizedBox(
              width: 5,
            ),
            Expincsel(
              icon: Icons.trending_up_outlined,
              cardiconcolor: Color.fromARGB(255, 3, 159, 8),
              title: "Income",
            ),
          ],
        ),
      ),
    );
  }
}

class Expincsel extends StatelessWidget {
  Expincsel(
      {required this.title, required this.icon, required this.cardiconcolor});

  String title;
  IconData icon;
  Color cardiconcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 100,
      height: MediaQuery.of(context).size.height * .05,
      decoration: BoxDecoration(
        color: kTileiconbg,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: const Color.fromARGB(255, 185, 183, 183)
        // )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: cardiconcolor,
                size: 18,
              ),
              Text(
                title,
                //style: kCardHeading,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
