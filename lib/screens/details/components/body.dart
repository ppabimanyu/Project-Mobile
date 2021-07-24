import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_in/constants.dart';
import 'package:live_in/screens/details/components/button_to_web.dart';
import 'package:live_in/screens/details/components/description.dart';
import 'package:live_in/screens/details/components/event_information.dart';
import 'package:live_in/screens/details/components/product_title_with_image.dart';
import 'package:live_in/screens/signin/login.dart';

class Body extends StatelessWidget {
  final product;

  const Body({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: SvgPicture.asset('assets/icons/back.svg',
                        color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.23),
                    padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPaddin,
                      right: kDefaultPaddin,
                    ),
                    // height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        EventInformation(product: product),
                        SizedBox(height: kDefaultPaddin / 2),
                        Description(product: product),
                        SizedBox(height: kDefaultPaddin / 2),
                        ButtonToWeb(product: product)
                      ],
                    ),
                  ),
                  ProductTitleWithImage(product: product)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
