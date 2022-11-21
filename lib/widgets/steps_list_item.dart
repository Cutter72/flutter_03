import 'package:flutter/material.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class StepsListItem extends StatelessWidget {
  final int index;
  final String step;

  StepsListItem(
    this.index,
    this.step, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            child: Text(
              "${index + 1}.",
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "${step}",
                softWrap: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
