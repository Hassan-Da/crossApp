import 'dart:convert';

import 'package:catalog_app/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductPageDetails extends StatefulWidget {
  final String productId;

  ProductPageDetails({Key? key, required String this.productId}) : super(key: key);

  @override
  State<ProductPageDetails> createState() => _ProductPageDetailsState();
}

class _ProductPageDetailsState extends State<ProductPageDetails> {
  List<dynamic> product = [];

  @override
  void initState() {
    super.initState();
    http
        .get(Uri.parse(
            "http://localhost:9000/products?id=${widget.productId}"))
        .then((res) {
      print(res.body);
      setState(() {
        product = json.decode(res.body);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Product details ${widget.productId}",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
            child: (product != null)
                ? ProductItem(product: product[0], isdiscribted: true)
                : Container()));
  }
}
