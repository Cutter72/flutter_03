import 'package:flutter/material.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class StepsListItem extends StatelessWidget {
  final String ingredient;

  const StepsListItem(
    this.ingredient, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(),
        Container(
          constraints: BoxConstraints(maxWidth: 200),
          child: Text("${ingredient}",
              // textAlign: TextAlign.center,
              softWrap: true,
              style: const TextStyle(
                // backgroundColor: Colors.black54,
                overflow: TextOverflow.ellipsis,
              )),
        ),
      ],
    );
  }
}
