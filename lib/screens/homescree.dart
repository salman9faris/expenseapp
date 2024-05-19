import 'package:expensetracker/constants/constant.dart';
import 'package:expensetracker/screens/analysis.dart';
import 'package:expensetracker/screens/dataentryscreen.dart';
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

  final scaffoldKey = GlobalKey<ScaffoldState>();

  List<dynamic> _screens = [
    HomePage(),
    TransactionScreen(),
    Analysis(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<bottomNavProvider>(
        builder: (context, _bottomnavindex, child) {
      return Scaffold(
        key: scaffoldKey,
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
        body: _screens[_bottomnavindex.currentindex],
        bottomNavigationBar: Bottomnavwidget(
          bottomnavindex: _bottomnavindex,
        ),
        floatingActionButton: _bottomnavindex.currentindex == 0
            ? FloatingActionButton(
                backgroundColor: kFloaticon,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DataInput()),
                  );
                },
              )
            : null,
      );
    });
  }
}
