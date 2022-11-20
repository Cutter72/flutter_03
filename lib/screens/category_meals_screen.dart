import 'package:flutter/material.dart';

import '../models/category.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class CategoryMealsScreen extends StatelessWidget {
  static const routeName = "/category-meals";

  // final Category category;
  //
  // const CategoryMealsScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    return Scaffold(
      // Scaffold must be the root for screens
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: const Center(
          child: Text(
              "THe recipes of the category")), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
