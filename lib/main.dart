import 'package:expensetracker/provider/bottomnavprovider.dart';
import 'package:expensetracker/screens/homescree.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => bottomNavProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
                seedColor: Color.fromARGB(255, 54, 167, 155)),
            useMaterial3: true,
          ),
          home: HomeScreen(),
        ));
  }
}
