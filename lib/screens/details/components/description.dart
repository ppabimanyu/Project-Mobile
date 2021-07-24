import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final product;

  String _description(dynamic event) {
    return event['description'];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Html(data: _description(product)),
    );
  }
}
