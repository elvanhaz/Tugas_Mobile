import 'package:flutter/material.dart';

// screens
import 'package:now_ui_flutter/screens/onboarding.dart';
import 'package:now_ui_flutter/screens/pro.dart';
import 'package:now_ui_flutter/screens/home.dart';
import 'package:now_ui_flutter/screens/profile.dart';
import 'package:now_ui_flutter/screens/register.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Now UI PRO Flutter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: '/onboarding',
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => new Home(),
          "/onboarding": (BuildContext context) => new Onboarding(),
          "/pro": (BuildContext context) => new Pro(),
          "/profile": (BuildContext context) => new Profile(),
          "/account": (BuildContext context) => new Register(),
        });
  }
}
