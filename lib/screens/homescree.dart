import 'package:expensetracker/constants/constant.dart';
import 'package:expensetracker/screens/analysis.dart';
import 'package:expensetracker/screens/home.dart';
import 'package:expensetracker/screens/settings.dart';
import 'package:expensetracker/screens/transactionscreen.dart';
import 'package:expensetracker/widgets/bottombar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:expensetracker/provider/bottomnavprovider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<dynamic> screens = [
    HomePage(),
    TransactionScreen(),
    Analysis(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<bottomNavProvider>(
        builder: (context, bottomnavindex, child) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          actions: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: FaIcon(
                FontAwesomeIcons.userTie,
                size: 32,
                color: kUseravatarcolor,
              ),
            ),
          ],
        ),
        body: screens[bottomnavindex.currentindex],
        bottomNavigationBar: Bottomnavwidget(
          bottomnavindex: bottomnavindex,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kFloaticon,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      );
    });
  }
}
