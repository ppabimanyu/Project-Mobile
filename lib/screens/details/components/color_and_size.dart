import 'package:flutter/material.dart';
import 'package:live_in/models/Product.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                product.title,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: kDefaultPaddin),
              Row(
                children: [
                  Icon(
                    Icons.bookmarks_rounded,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                  Text(
                    // products is out demo list
                    product.category,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              ),
              SizedBox(height: kDefaultPaddin / 2),
              Row(
                children: [
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                  Text(
                    // products is out demo list
                    product.date,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              ),
              SizedBox(height: kDefaultPaddin / 2),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    size: 30.0,
                    color: Colors.black54,
                  ),
                  Text(
                    // products is out demo list
                    product.time,
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              ),
              SizedBox(height: kDefaultPaddin / 2),
              Row(
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 30.0,
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
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    // by default isSelected is false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
