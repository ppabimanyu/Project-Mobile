import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:live_in/constants.dart';
import 'package:live_in/screens/signup/sign_up.dart';

import 'component/body.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // each product have a color
      // backgroundColor: Colors.orange[400],
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              child: Column(
                children: [
                  // Image.asset('assets/images/about-img.jpg'),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 60.0),
                      child: Column(
                        children: [
                          Text(
                            'Forgot Password',
                            style: TextStyle(
                                fontSize: 40.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Please enter your email and we will send \nyou a link to return to your account',
                            style: TextStyle(fontSize: 16.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: InputForgotPassword(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont't have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
