import 'package:expensetracker/provider/bottomnavprovider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import '../constants/constant.dart';

class Bottomnavwidget extends StatelessWidget {
  Bottomnavwidget({
    super.key,
    required this.bottomnavindex,
  });

  int _selectedindex = 0;
  bottomNavProvider bottomnavindex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: GNav(
          color: Colors.black,
          duration: const Duration(milliseconds: 300),
          tabActiveBorder: Border.all(
              color: const Color.fromARGB(255, 113, 113, 113), width: .1),
          activeColor: kBottomseltextcolor,
          tabBackgroundColor: kBottomnavbg,
          gap: 2,
          textSize: 25,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
          tabs: const [
            GButton(
              icon: Icons.house_outlined,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              text: " Home",
            ),
            GButton(
              icon: Icons.compare_arrows_outlined,
              textSize: 10.0,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              text: " History",
            ),
            GButton(
              icon: Icons.wallet_outlined,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              text: " Wallet",
            ),
            GButton(
              icon: Icons.settings_sharp,
              borderRadius: BorderRadius.all(Radius.circular(15)),
              text: " Settings",
            ),
          ],
          selectedIndex: _selectedindex,
          onTabChange: (value) {
            _selectedindex = value;
            bottomnavindex.updatescreenindex(value);
          },
        ),
      ),
    );
  }
}
