import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Category {
  String title;
  String description;
  Category({this.title, this.description});
}

class DiscountedCategories {
  int discountPercentage = 50;
}

mixin CategoriesWithSubCategories {
  List<Category> subCategories = [];
}

// Storage of all categories;
class Categories with ChangeNotifier {
  List<Category> categories = [];
  // Category cat1 =
  //     new Category(title: "Electronics", description: "New age gadgets");

  add(Category item) {
    categories.add(item);
    notifyListeners();
  }
}
