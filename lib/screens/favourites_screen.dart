import 'package:flutter/material.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Scaffold must be the root for screens
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("My favourites"),
        ),
        body: Center(
          child: Text("Favourites"), // This trailing comma makes auto-formatting nicer for build methods.
        ));
  }
}
