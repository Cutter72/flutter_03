import 'package:flutter/material.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold must be the root for screens
      appBar: AppBar(
        title: const Text("Flutter 03"),
      ),
      body: const Center(
          child: Text(
              "THe recipes of the category")), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
