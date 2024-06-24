import 'dart:convert';

import 'package:catalog_app/pages/details.page.dart';
import 'package:catalog_app/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<dynamic> products = [];

  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://172.26.48.1:9000/products")).then((res) {
      print(res.body);
      setState(() {
        products = json.decode(res.body);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Products",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ProductItem(
              product: products[index],
              isdiscribted: false,
            );
          },
          itemCount: products.length,
        ));
  }
}
