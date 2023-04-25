import 'package:flutter/material.dart';
import 'package:user_preferences_app/screens/home.screen.dart';
import 'package:user_preferences_app/screens/settings.screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),      
        SettingsScreen.routeName: (_) => SettingsScreen(),
      },
    );
  }
}
