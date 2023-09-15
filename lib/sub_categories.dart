import 'package:flutter/material.dart';

import 'models/cateory_model.dart';

class SubCategoryModel {
  final String name;

  SubCategoryModel({
    required this.name,
  });
}

class SubCategories extends StatelessWidget {
  final CategoryModel category;

   SubCategories({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sub Categories"),
      ),
      body: ListView.builder(
        itemCount: category.subitem.length,
        itemBuilder: (BuildContext context, int index) {
          final subcategory = SubCategoryModel(
            name: category.subitem[index]['name'] ?? '',
          );
          return ListTile(
            title: Text(subcategory.name),
            // You can customize ListTile onTap to perform actions.
          );
        },
      ),
    );
  }
}
