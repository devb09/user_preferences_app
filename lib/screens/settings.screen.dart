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
      body: Center(
         child: Text('SettingsScreen'),
      ),
    );
  }
}