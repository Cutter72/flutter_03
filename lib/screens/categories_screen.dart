import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../widgets/category_item.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold must be the root for screens
      appBar: AppBar(
        title: const Text("Flutter 03"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES.map((e) => CategoryItem(category: e)).toList(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
