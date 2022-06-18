import 'package:flutter/material.dart';
import 'package:meals_app/features/categories/presentation/pages/categories_page.dart';
import 'package:meals_app/features/home/presentation/pages/favorites_screen.dart';
import 'package:meals_app/features/home/widgets/main_drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesPage(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Your favorites'},
  ];
  int _selectedPageindex = 0;

  void _selectedPage(int index) {
    setState(() {
      _selectedPageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: (Text(
            _pages[_selectedPageindex]['title'] as String,
          )),
        ),
        drawer: const MainDrawer(),
        body: _pages[_selectedPageindex]['page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: const Color.fromARGB(255, 130, 162, 255),
          unselectedItemColor: const Color.fromARGB(255, 230, 236, 255),
          selectedItemColor: const Color.fromARGB(255, 255, 201, 209),
          currentIndex: _selectedPageindex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Favorites',
            ),
          ],
        ),
      ),
    );
  }
}
