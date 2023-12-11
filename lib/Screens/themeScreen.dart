import 'package:dms/Providers/themeChangerProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// class appColors {
//   Color mainBckClr = Color(222831);
//   Color secondaryBckClr = Color.fromRGBO(57, 62, 70, 100);
//   Color thirdBckClr = Color(606470);
//   Color mainBtnClr = Color.fromRGBO(37, 109, 133, 100);
//   Color mainTxtClr = Color.fromRGBO(217, 217, 217, 100);
//   // Color mainbackgroundClr = Color(222831);
// }

class ThemeScreen extends StatefulWidget {
  const ThemeScreen({super.key});

  @override
  State<ThemeScreen> createState() => _ThemeScreenState();
}

class _ThemeScreenState extends State<ThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger =
        Provider.of<ThemeChangerProvider>(context, listen: true);
    print('Build again');
    return Scaffold(
      appBar: AppBar(
        title: Text("App Theme"),
      ),
      body: Column(children: [
        Consumer<ThemeChangerProvider>(builder: (context, value, child) {
          return RadioListTile<ThemeMode>(
              title: const Text('Light Mode'),
              value: ThemeMode.light,
              groupValue: value.themeMode,
              onChanged: value.setTheme);
        }),
        Consumer<ThemeChangerProvider>(builder: (context, value, child) {
          return RadioListTile<ThemeMode>(
              title: const Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: value.themeMode,
              onChanged: value.setTheme);
        }),
        Consumer<ThemeChangerProvider>(builder: (context, value, child) {
          return RadioListTile<ThemeMode>(
              title: const Text('System Mode'),
              value: ThemeMode.system,
              groupValue: value.themeMode,
              onChanged: value.setTheme);
        }),
      ]),
    );
  }
}
