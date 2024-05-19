import 'package:flutter/material.dart';
import '../constants/constant.dart';

class Categorywidget extends StatelessWidget {
  Categorywidget(
      {super.key,
      required this.categorytem,
      required this.categorytemexp,
      required this.categorytemcolor,
      required this.categorytemicon});
  String categorytem;
  int categorytemexp;
  IconData categorytemicon;
  Color categorytemcolor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .07,
        decoration: BoxDecoration(
          color: kCatcardbg,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(color: kCatcardboarder)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: categorytemcolor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    categorytemicon,
                    color: kCaticonclr,
                    size: 20,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  categorytem,
                  style: kCatCardtitle,
                ),
              ],
            ),
            Text(
              "$categorytemexp INR",
              style: kCatcardamount,
            ),
          ],
        ),
      ),
    );
  }
}
