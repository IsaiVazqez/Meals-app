import 'package:flutter/material.dart';
import 'package:meals_app/features/categories/presentation/pages/categories_page.dart';
import 'package:meals_app/features/home/presentation/pages/favorites_screen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Meals'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.category),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Favorites',
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          CategoriesPage(),
          FavoritesScreen(),
        ]),
      ),
    );
  }
}
