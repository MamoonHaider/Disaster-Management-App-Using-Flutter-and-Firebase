import 'package:flutter/material.dart';
import 'package:dms/Screens/themeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
          title: const Text(
        "Disaster management System",
        textAlign: TextAlign.center,
        style: TextStyle(

            // color: mainTxtClr;
            ),
      )),
      body: SingleChildScrollView(
        child: Container(),
      ),
    ));
  }
}
