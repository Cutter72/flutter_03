import 'package:flutter/material.dart';
import 'package:flutter_03/models/category.dart';

import '../screens/category_meals_screen.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.primary,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      onTap: () => goTo(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            gradient: LinearGradient(
              colors: [category.color.withOpacity(0.7), category.color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  goTo(BuildContext context) {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (_) => CategoryMealsScreen(category: category),
    // ));
    Navigator.of(context).pushNamed(CategoryMealsScreen.routeName, arguments: category);
  }
}
