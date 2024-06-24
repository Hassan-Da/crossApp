import 'package:catalog_app/widgets/drawer.widgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Home",
            style: TextStyle(fontSize: 25, color: Colors.white70),
          ),
          backgroundColor: Colors.redAccent,
        ),
        drawer: MyAppDrawer(),
        body: Center(
          child: Text(
            "Hello Walid",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ));
  }
}
