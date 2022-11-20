import 'package:flutter/material.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class RecipeTitle extends StatelessWidget {
  final String text;

  const RecipeTitle(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Text(text,
          textAlign: TextAlign.center,
          softWrap: true,
          style: const TextStyle(
            // backgroundColor: Colors.black54,
            fontSize: 20,
            overflow: TextOverflow.fade,
          )),
    );
  }
}
