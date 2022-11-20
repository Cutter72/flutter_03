import 'package:flutter/material.dart';

import '../models/meal.dart';

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
      body: Text(meal.steps.toString()), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
