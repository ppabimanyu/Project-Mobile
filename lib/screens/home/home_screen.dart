import 'package:flutter/material.dart';
import 'package:live_in/constants.dart';
import 'package:live_in/screens/home/components/body.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(child: Body()),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.all(0.0),
        child: TextButton(
          // icon: SvgPicture.asset("assets/icons/back.svg"),
          child: Text(
            'Live In',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.account_circle_sharp),
          iconSize: 30.0,
          color: Colors.black54,
          onPressed: () async {
            String url = "https://wsjti.id/LiveIn/public/dashboard";
            var urllaunchable =
                await canLaunch(url); //canLaunch is from url_launcher package
            if (urllaunchable) {
              await launch(
                  url); //launch is from url_launcher package to launch URL
            } else {
              print("URL can't be launched.");
            }
          },
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
