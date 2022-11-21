import 'package:flutter/material.dart';
import 'package:flutter_03/screens/favourites_screen.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).colorScheme.secondary,
          child: Text(
            "Cooking Up!",
            style: TextStyle(
              fontSize: 24,
              color: Theme.of(context).colorScheme.onBackground,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.restaurant),
          title: Text(
            "Categories",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text(
            "My favourites",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(FavouritesScreen.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.filter_alt),
          title: Text(
            "Filters",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          onTap: () {},
        ),
      ]),
    );
  }
}
