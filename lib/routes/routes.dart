import 'package:flutter/material.dart';
import 'package:meals_app/features/categories/presentation/pages/categories_page.dart';
import 'package:meals_app/features/categories/presentation/pages/meal_detail_screen.dart';
import 'package:meals_app/features/home/presentation/pages/home_screen.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'home': (_) => HomePage(),
  'categories': (_) => CategoriesPage(),
  MealDetailScreen.routeName: (ctx) => const MealDetailScreen(),
};
