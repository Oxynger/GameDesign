import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:game_design_lens/game_design_home.dart';

void main() => runApp(GameDesignApp());

class GameDesignApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Game Design",
      theme: ThemeData(
        accentColor: Colors.white,
        primaryColor: Colors.orange,
      ),
      home: GameDesignHome(),
    );
  }
}