import 'package:flutter/material.dart';
import 'package:live_in/constants.dart';
import 'package:live_in/models/Product.dart';
import 'package:live_in/screens/login.dart';

import 'categorries.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Live In',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  )),
              IconButton(
                  icon: Icon(Icons.account_circle_sharp),
                  iconSize: 30.0,
                  color: Colors.black54,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  }),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 16.0),
          child: Text("Find the best live broadcast for you",
              style: Theme.of(context).textTheme.headline6!),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(
                    product: products[index],
                  );
                }),
          ),
        ),
      ],
    );
  }
}
