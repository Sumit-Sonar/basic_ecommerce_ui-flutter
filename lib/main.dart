import 'package:flutter/material.dart';
import 'package:flutter_first_app/multi_app_screens/app_interface.dart';
import 'package:flutter_first_app/multi_app_screens/login_screen.dart';
import 'package:flutter_first_app/screen_navigator/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myfirstapp());
}

class Myfirstapp extends StatelessWidget {
  const Myfirstapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        MyRoutes.homeRoute: (context) => app_interface(),
        MyRoutes.loginRoute: (context) => login_screen(),
      },
    );
  }
}
