import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';n
import 'package:my_portfolio/screen/Splach.dart';
import 'package:my_portfolio/screen/home/home_screen.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mohammad Portfolio',
      // we are using dark theme and we modify it as our need
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        // textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
        //     .apply(bodyColor: Colors.white)
        //     .copyWith(
        //       bodyText1: TextStyle(color: bodyTextColor),
        //       bodyText2: TextStyle(color: bodyTextColor),
        //     ),
      ),
      home: const HomeScreen(),
    );
  }
}
