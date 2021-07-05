import 'package:flutter/material.dart';

import 'modules/Splash/splash_page.dart';
import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/register/register_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
    initialRoute: "/splash",
    routes: <String, WidgetBuilder> {
      "/splash": (BuildContext context) => SplashPage(),
      "/login": (BuildContext context) => LoginPage(),
      "/home": (BuildContext context) => HomePage(),
      "/register": (BuildContext context) => RegisterPage(),
      //"/recoverPassword": (BuildContext context) => RecoverPasswordPage(),
    }
  ));
}