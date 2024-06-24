import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(children: [
      DrawerHeader(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/R.jpg"),
              radius: 50,
            )
          ],
        ),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.black12, Colors.redAccent])),
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed("/");
        },
        leading:
            Icon(Icons.home_filled, color: Theme.of(context).iconTheme.color),
        trailing: Icon(Icons.arrow_right_sharp,
            color: Theme.of(context).iconTheme.color),
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      Divider(
        color: Colors.redAccent,
        height: 1,
      ),
      ListTile(
        onTap: () {
          Navigator.of(context).pop();
          Navigator.of(context).pushNamed("/product");
        },
        leading:
            Icon(Icons.shopping_cart, color: Theme.of(context).iconTheme.color),
        trailing: Icon(Icons.arrow_right_sharp,
            color: Theme.of(context).iconTheme.color),
        title: Text(
          "Products",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      Divider(
        color: Colors.redAccent,
        height: 1,
      ),
    ]));
  }
}
