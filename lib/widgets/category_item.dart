import 'package:flutter/material.dart';
import 'package:flutter_03/screens/category_meals_screen.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;

  const CategoryItem({Key? key, required this.title, required this.color}) : super(key: key);

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
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }

  goTo(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => const CategoryMealsScreen(),
    ));
  }
}
