import 'package:flutter/material.dart';
import 'package:flutter_03/screens/categories_screen.dart';
import 'package:flutter_03/screens/favourites_screen.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Meals"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: "Categories",
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: "Favourites",
              ),
            ]),
          ),
          body: TabBarView(
            children: [
              CategoriesScreen(),
              FavouritesScreen(),
            ],
          ),
        ));
  }
}
