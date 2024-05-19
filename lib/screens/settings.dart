import 'package:expensetracker/constants/constant.dart';
import 'package:expensetracker/widgets/catitemwidget.dart';
import 'package:expensetracker/widgets/settingstiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Account Settings ",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
            Container(
              decoration: const BoxDecoration(
                color: kTilecolor,
                borderRadius: BorderRadius.all(Radius.circular(
                        10.0) //                 <--- border radius here
                    ),
              ),
              child: Column(
                children: [
                  settingstile(
                    title: "username",
                    icon: FontAwesomeIcons.user,
                    value: "salman",
                  ),
                  settingstile(
                      title: "Email",
                      icon: FontAwesomeIcons.envelope,
                      value: "Salman9faris@gmail.com"),
                  settingstile(
                    title: "Phone number",
                    icon: FontAwesomeIcons.phone,
                    value: "+919961407985",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "App Settings ",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: kTilecolor,
                borderRadius: BorderRadius.all(Radius.circular(10.0) //
                    ),
              ),
              child: Column(
                children: [
                  settingstile(
                    title: "Currancy",
                    icon: Icons.currency_rupee_rounded,
                    value: "INR",
                  ),
                  settingstile(
                    title: "Language",
                    icon: Icons.language,
                    value: "English",
                  ),
                  settingstile(
                    title: "Invite a friend",
                    icon: FontAwesomeIcons.comment,
                  ),
                  settingstile(
                    title: "feedback",
                    icon: FontAwesomeIcons.user,
                    trail: true,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: kTilecolor,
                borderRadius: BorderRadius.all(Radius.circular(
                        10.0) //                 <--- border radius here
                    ),
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    settingstile(
                      title: "Logout",
                      icon: Icons.logout,
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class settingstile extends StatelessWidget {
  settingstile({
    super.key,
    required this.icon,
    required this.title,
    this.value = "",
    this.trail = false,
    //required this.toggleswitch,
  });

  final IconData icon;
  final String title;
  String value;
  bool trail;
  //Function toggleswitch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: Colors.amberAccent),
          borderRadius: BorderRadius.circular(10),
        ),
        leading: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: kTileiconbg,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: kTileiconclr,
            size: 18,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: KTiletitle),
            Text(
              value!,
              style: kTilevalue,
            ),
          ],
        ),
        trailing: trail == true ? Icon(Icons.arrow_forward_ios_sharp) : null);
  }
}
