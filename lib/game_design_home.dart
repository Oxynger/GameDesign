import 'package:flutter/material.dart';

class GameDesignHome extends StatefulWidget {
  @override
  _GameDisigneState createState() => _GameDisigneState();
}

class _GameDisigneState extends State<GameDesignHome>
    with SingleTickerProviderStateMixin {
  TabController _menuControler;

  @override
  void initState() {
    super.initState();
    _menuControler = TabController(vsync: this, initialIndex: 0, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Design'),
        bottom: TabBar(
          controller: _menuControler,
          indicatorColor: Colors.orange,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.home),
              text: 'Leans',
            ),
            Tab(
              icon: Icon(Icons.shuffle),
              text: 'Random',
            ),
            Tab(
              icon: Icon(Icons.sort),
              text: 'Sort',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            )
          ],
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
