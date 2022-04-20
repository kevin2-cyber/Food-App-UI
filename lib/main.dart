import 'package:flutter/material.dart';

import 'app/screens/home/home_screen.dart';
import 'core/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food UI Kit',
      theme: buildThemeData(),

      /// On first screen must call [SizeConfig().init(context)]
      home: HomeScreen(),
    );
  }
}
