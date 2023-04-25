import 'package:flutter/material.dart';
import 'package:user_preferences_app/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: MenuDrawer(),
      body: Center(
        child: Text('HomeScreen'),
      ),
    );
  }
}
