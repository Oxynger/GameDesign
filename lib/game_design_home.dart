import 'package:flutter/material.dart';

class GameDesignHome extends StatefulWidget {
  @override
  _GameDisigneState createState() => _GameDisigneState();
}

class _GameDisigneState extends State<GameDesignHome>
    with SingleTickerProviderStateMixin {
  TabController _menuController;

  final List<Tab> headerBar = [
    Tab(icon: Icon(Icons.home), text: 'Home'),
    Tab(icon: Icon(Icons.shuffle), text: 'Random'),
    Tab(icon: Icon(Icons.sort), text: 'Sort'),
    Tab(icon: Icon(Icons.favorite), text: 'Favorite'),
  ];

  @override
  void initState() {
    super.initState();
    _menuController = TabController(vsync: this, length: headerBar.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        title: Text('Game Design'),
        bottom: TabBar(
          controller: _menuController,
          indicatorColor: Colors.orange,
          tabs: headerBar,
        ),
        actions: <Widget>[
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5.0)),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
