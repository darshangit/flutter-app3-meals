import 'package:flutter/material.dart';
import '../widgets/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoriteScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have no Favorites yet - Please added more'),
      );
    }else {
      return ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: favoriteMeals[index].id,
              title: favoriteMeals[index].title,
              imageUrl: favoriteMeals[index].imageUrl,
              complexity: favoriteMeals[index].complexity,
              affordability: favoriteMeals[index].affordability,
              duration: favoriteMeals[index].duration,
            );
          },
          itemCount: favoriteMeals.length,
        );
    }
  }
}
