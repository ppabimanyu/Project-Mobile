import 'package:flutter/material.dart';
import 'package:live_in/models/Product.dart';
import 'package:live_in/screens/details/details_screen.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailsScreen(
              product: product,
            );
          }));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(4.0),
                height: 180,
                width: 180,
                child: Hero(
                  tag: "${product.id}",
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.asset(product.image)),
                ),
              ),
            ),
            Text(
              "\$${product.title}",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.bookmarks_rounded,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        // products is out demo list
                        product.category,
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        // products is out demo list
                        product.date,
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        // products is out demo list
                        product.time,
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_pin,
                        size: 20.0,
                        color: Colors.black54,
                      ),
                      Text(
                        // products is out demo list
                        product.platform,
                        style: TextStyle(color: kTextLightColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
