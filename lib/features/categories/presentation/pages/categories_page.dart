import 'package:flutter/material.dart';
import 'package:meals_app/features/categories/data/models/dummy_data.dart';
import 'package:meals_app/features/categories/widgets/category_items.dart';

class CategoriesPage extends StatefulWidget {
  CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        // ignore: sort_child_properties_last
        children: dummy_category
            .map((catData) => CategoryItem(
                  catData.id,
                  catData.title,
                  catData.color!,
                ))
            .toList(),
        padding: const EdgeInsets.all(24),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 15,
          maxCrossAxisExtent: 200,
          childAspectRatio: 1,
          crossAxisSpacing: 15,
        ),
      ),
    );
  }
}
