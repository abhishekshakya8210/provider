import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/themeprovider.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({super.key});

  @override
  State<DarkModeScreen> createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  String groupValue = "light"; // default

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<Themeprovider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('DARKMODE'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text('Light mode'),
            value: "light",
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value.toString();
              });
              themeProvider.setTheme(ThemeMode.light);
            },
          ),
          RadioListTile(
            title: const Text('Dark mode'),
            value: "dark",
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value.toString();
              });
              themeProvider.setTheme(ThemeMode.dark);
            },
          ),
          RadioListTile(
            title: const Text('System mode'),
            value: "system",
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                groupValue = value.toString();
              });
              themeProvider.setTheme(ThemeMode.system);
            },
          ),
        ],
      ),
    );
  }
}
