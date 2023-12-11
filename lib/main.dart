import 'dart:io';

import 'package:dms/Screens/signupScreen.dart';
import 'package:dms/Screens/themeScreen.dart';
import 'package:dms/Providers/loginScreenProvider.dart';
import 'package:dms/Screens/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dms/Providers/themeChangerProvider.dart';

void main() {
  runApp(Dms());
}

class Dms extends StatelessWidget {
  const Dms({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LoginScreenProvider()),
          ChangeNotifierProvider(create: (_) => ThemeChangerProvider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChangerProvider>(context);
          return MaterialApp(
            themeMode: themeChanger.themeMode,
            theme: ThemeData(brightness: Brightness.light),
            darkTheme: ThemeData(brightness: Brightness.dark),
            initialRoute: '/themeScreen',
            routes: {
              '/signupScreen': (context) => SignupScreen(),
              '/loginScreen': (context) => LoginScreen(),
              '/themeScreen': (context) => ThemeScreen(),
            },
          );
        }));
  }
}
