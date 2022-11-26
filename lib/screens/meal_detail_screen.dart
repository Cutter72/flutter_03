import 'package:collection/collection.dart';
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
            ...meal.ingredients.map((ingredient) {
              return IngredientsListItem(ingredient);
            }).toList(),
            Divider(color: Colors.black),
            RecipeTitle("Steps"),
            ...meal.steps.mapIndexed((index, step) {
              return StepsListItem(index, step);
            }).toList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            goBackWithData(context);
          },
          child: Icon(Icons.arrow_back)), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  goBackWithData(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop("[Data from pushed screen after back as a result]");
    }
  }
}
