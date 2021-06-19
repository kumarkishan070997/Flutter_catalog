import 'package:flutter/material.dart';
import "screens/home_page.dart";
import "screens/login_page.dart";
import "utils/routes.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        "/": (context) => new LoginPage(),
        MyRoutes.loginRoute: (context) => new LoginPage(),
        MyRoutes.homeRoute: (context) => new HomePage()
      },
    );
  }
}
