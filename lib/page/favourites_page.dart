import 'package:flutter/material.dart';
import 'package:test_tab/widget/navigation_drawer_widget.dart';

class FavouritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: Text('Favourites'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
      );
}
