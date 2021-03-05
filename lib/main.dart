import 'package:app_big/screens/Category/category.dart';
import 'package:app_big/screens/store.dart';
import 'package:app_big/state/Categories.dart';
import 'package:flutter/material.dart';
import 'package:app_big/screens/home.dart';
import 'package:app_big/screens/products.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(EStoreApp());
}

// Super Parent
class EStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Registering all Screens
    // Named Routes
    return ChangeNotifierProvider(
      create: (ctx) {
        return Categories();
      },
      child: MaterialApp(
        routes: {
          '/': (ctx) {
            return HomeScreen();
          },
          '/products': (ctx) {
            return ProductsScreen();
          },
          '/store': (ctx) {
            return StoreScreen();
          },
          '/category': (ctx) {
            return CategoryScreen();
          },
        },
      ),
    );
  }
}
