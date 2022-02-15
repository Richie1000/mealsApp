import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/model/meal.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';

import '../model/meal.dart';
import '../widgets/meal_item.dart';

class FavouriteScreen extends StatelessWidget {
  List<Meal> favouriteMeal;
  //const FavouriteScreen({ Key? key }) : super(key: key);

  FavouriteScreen(this.favouriteMeal);

  @override
  Widget build(BuildContext context) {
    if (favouriteMeal.isEmpty) {
      return Center(
        child: Text("You have no Favourite yet, start by adding some!"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favouriteMeal[index].id,
            title: favouriteMeal[index].title,
            imageUrl: favouriteMeal[index].imageUrl,
            duration: favouriteMeal[index].duration,
            affordability: favouriteMeal[index].affordability,
            complexity: favouriteMeal[index].complexity,
          );
        },
        itemCount: favouriteMeal.length,
      );
    }
  }
}
