import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:user_preferences_app/providers/theme.provider.dart';
import 'package:user_preferences_app/shared_preferences/preferences.dart';
import 'package:user_preferences_app/widgets/drawer.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Setting';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarkMode = Preferences.isDarkMode;
  // int gender = 1;
  // String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustes',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              Divider(),
              SwitchListTile.adaptive(
                value: Preferences.isDarkMode,
                title: Text('Dark mode'),
                onChanged: (value) {
                  Preferences.isDarkMode = value;
                  final themProvider = Provider.of<ThemeProvider>(context, listen: false);
                  value ? themProvider.setDarkMode() : themProvider.setLightMode();
                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: Preferences.gender,
                title: Text('Masculino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                },
              ),
              Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: Preferences.gender,
                title: Text('Femenino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                },
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onChanged: (value) {
                    Preferences.name = value;
                    setState(() {});
                  },
                  initialValue: Preferences.name,
                  decoration: InputDecoration(
                      labelText: 'Nombre', helperText: 'Nombre del usuario'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
