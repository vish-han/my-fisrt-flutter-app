import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/home_page.dart';
import 'package:flutter_practice/pages/login_page.dart';
import 'package:flutter_practice/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const LoginPage(),
        theme: ThemeData(
            brightness: Brightness.light,
            fontFamily: GoogleFonts.lato().fontFamily),
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.light,
        routes: {
          MyRoutes.loginroute: (context) => const LoginPage(),
          MyRoutes.homeroute: (context) => const HomePage()
        });
  }
}
