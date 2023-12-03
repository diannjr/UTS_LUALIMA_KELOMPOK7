import 'package:flutter/material.dart';
import 'package:uts_lualimastuff/screens/about_screen.dart';
import 'package:uts_lualimastuff/screens/cart_screen.dart';
import 'package:uts_lualimastuff/screens/home_screen.dart';
import 'package:uts_lualimastuff/screens/item_sreen.dart';
import 'package:uts_lualimastuff/screens/login_screen.dart';
import 'package:uts_lualimastuff/screens/register_screen.dart';
import 'package:uts_lualimastuff/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => SplashScreen(),
        "homePage": (context) => HomeScreen(),
        "cartPage": (context) => CartPage(),
        "registerPage": (context) => RegisterPage(),
        "loginPage": (context) => LoginPage(),
        "aboutPage": (context) => AboutPage(),
        "itemPage": (context) => ItemsPage(),
      },
    );
  }
}
