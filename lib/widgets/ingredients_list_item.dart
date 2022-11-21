import 'package:flutter/material.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class IngredientsListItem extends StatelessWidget {
  final String ingredient;

  const IngredientsListItem(
    this.ingredient, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "${ingredient}",
      softWrap: true,
    );
  }
}
