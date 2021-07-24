import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final product;

  String _img(dynamic event) {
    return event['img'];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: kDefaultPaddin),
          Row(
            children: <Widget>[
              Expanded(
                child: Hero(
                  tag: "${_img(product)}",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Container(
                      height: 250,
                      child: Image.network(
                        'https://wsjti.id/LiveIn/public/storage/images/' +
                            _img(product),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
