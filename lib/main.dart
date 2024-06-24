import 'package:catalog_app/pages/details.page.dart';
import 'package:catalog_app/pages/home.page.dart';
import 'package:catalog_app/pages/product.page.dart';
import 'package:catalog_app/pages/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/product': (context) => ProductPage(),
        '/productDetails': (context) => ProductPageDetails(
            productId: ModalRoute.of(context)!.settings.arguments as String),
      },
      initialRoute: "/",
      title: 'Catalog app',
      theme: MyTheme.themes[0],
    );
  }
}
