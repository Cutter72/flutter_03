import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/ingredients_list_item.dart';
import '../widgets/recipe_title.dart';
import '../widgets/steps_list_item.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class MealDetailScreen extends StatelessWidget {
  static const routeName = "/meat-details";

  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;
    return Scaffold(
      // Scaffold must be the root for screens
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(meal.imageUrl, fit: BoxFit.cover),
            RecipeTitle("Ingredients"),
            ...meal.ingredients.map((e) {
              return IngredientsListItem(e);
            }).toList(),
            Divider(color: Colors.black),
            RecipeTitle("Steps"),
            ...meal.steps.map((e) {
              return StepsListItem(e);
            }).toList(),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
