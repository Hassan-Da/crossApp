import 'package:catalog_app/pages/details.page.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final dynamic product;
  final bool isdiscribted;

  const ProductItem(
      {Key? key, required dynamic this.product, required this.isdiscribted})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ListTile(
          title: Card(
        color: Colors.orange,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 200,
                width: 150,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${product["name"]}"),
                        Text("${product["price"]} MAD"),
                        if (product["promotion"])
                          const Icon(
                            Icons.heart_broken,
                            color: Colors.red,
                          ),
                        Row(
                          children: [
                            for (int i = 0; i < product["stars"]; i++)
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                              )
                          ],
                        )
                      ],
                    ),
                  ),
                )),
            InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                // MaterialPageRoute(
                //     builder: (context) =>
                //         ProductPageDetails(productId: product["id"])));
                Navigator.pushNamed(context, "/productDetails",
                    arguments: product["id"]);
              },
              child: Image(
                  width: 200,
                  height: 200,
                  image: AssetImage("${product["image"]}")),
            )
          ],
        ),
      )),
      if (isdiscribted) Text(product["description"])
    ]);
  }
}
