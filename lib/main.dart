import 'package:flutter/material.dart';

import './menu.dart';
import 'gameScreens/gameScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(title: 'Main Menu'),
      routes: {
        '/gameScreen': (ctx) => GameScreen(),
      },
    );
  }
}

class Home extends StatelessWidget {
  final String title;
  const Home({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Menu(),

    );
  }
}
