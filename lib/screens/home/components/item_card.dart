import 'package:flutter/material.dart';
import 'package:live_in/constants.dart';
import 'package:live_in/screens/details/details_screen.dart';

class ItemCard extends StatelessWidget {
  final product;
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                "\$${product.title}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Row(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Row(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Row(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Row(
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
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
