import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_in/constants.dart';
import 'package:live_in/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have a color
      backgroundColor: Colors.orange[400],
      // appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange[400],
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.account_circle_sharp),
          iconSize: 30.0,
          color: Colors.white70,
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
