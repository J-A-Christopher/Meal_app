import 'package:flutter/material.dart';
import 'package:meal_app/screens/meal_screen_detail.dart';
import 'screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DeliMeals',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
                .copyWith(secondary: Colors.amber),
            canvasColor: const Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                  titleMedium: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                  ),
                )),
        // home: const CategoriesScreen(),
        routes: {
          '/': ((context) => const CategoriesScreen()),
          CategoryMealsScreen.routeName: (ctx) => const CategoryMealsScreen(),
          MealDetailScreen.routeName: (context) => const MealDetailScreen(),
        });
  }
}
