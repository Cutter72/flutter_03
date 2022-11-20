import 'package:flutter/material.dart';

import '../models/meal.dart';

///
/// @author Paweł Drelich <drelich_pawel@o2.pl>
///
class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({Key? key, required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showRecipe(),
      child: Card(
        margin: const EdgeInsets.all(10),
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(children: [
          Stack(
            // alignment: Alignment.bottomRight, // alignment for all children
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.network(
                  meal.imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                //alignment for this particular child
                right: 10,
                bottom: 5,
                child: Container(
                  width: 200,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.black54,
                  // constraints: const BoxConstraints(maxWidth: 200, minWidth: 10),
                  child: Text(
                    meal.title,
                    textAlign: TextAlign.start,
                    softWrap: true,
                    style: const TextStyle(
                      color: Colors.white,
                      // backgroundColor: Colors.black54,
                      fontSize: 20,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.schedule),
                    const SizedBox(
                      width: 6,
                    ),
                    Text("${meal.duration} min"),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.work),
                    const SizedBox(
                      width: 6,
                    ),
                    Text("${meal.complexity.name}"),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.attach_money),
                    Text("${meal.affordability.name}"),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  showRecipe() {}
}
