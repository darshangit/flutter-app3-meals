import 'package:flutter/material.dart';
import './categories_screen.dart';
import './favorites_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = [CategoriesScreen(), FavoriteScreen()];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals'),
      ),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.category), title: const Text('Categories')),
          BottomNavigationBarItem(
              icon: const Icon(Icons.category), title: const Text('Favorites'))
        ],
      ),
    );
  }
}
