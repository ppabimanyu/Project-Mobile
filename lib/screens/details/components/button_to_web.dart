import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants.dart';

class ButtonToWeb extends StatelessWidget {
  const ButtonToWeb({
    Key? key,
    required this.product,
  }) : super(key: key);

  final product;

  num _id(dynamic event) {
    return event['id'];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Colors.orange[700],
                onPressed: () async {
                  String url = "https://wsjti.id/LiveIn/public/details/" +
                      _id(product).toString();
                  var urllaunchable = await canLaunch(
                      url); //canLaunch is from url_launcher package
                  if (urllaunchable) {
                    await launch(
                        url); //launch is from url_launcher package to launch URL
                  } else {
                    print("URL can't be launched.");
                  }
                },
                child: Text(
                  "More".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
