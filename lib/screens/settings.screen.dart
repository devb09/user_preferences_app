import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/drawer.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'Setting';

  const SettingsScreen({Key? key}) : super(key: key);

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
                value: true,
                title: Text('Dark mode'),
                onChanged: (value) {},
              ),
              Divider(),
              RadioListTile<int>(
                value: 1,
                groupValue: 1,
                title: Text('Masculino'),
                onChanged: (value) {},
              ),
              Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: 1,
                title: Text('Femenino'),
                onChanged: (value) {},
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Fernando',
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
