import 'package:flutter/material.dart';

import '../../../constants.dart';

class FormSignUn extends StatefulWidget {
  const FormSignUn({Key? key}) : super(key: key);

  @override
  _FormSignUnState createState() => _FormSignUnState();
}

class _FormSignUnState extends State<FormSignUn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? password;

  String? confirmPassword;

  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          formInputEmail(),
          SizedBox(height: kDefaultPaddin),
          formInputPassword(),
          SizedBox(height: kDefaultPaddin),
          formInputConfirmPassword(),
          SizedBox(height: kDefaultPaddin),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                // GestureDetector(
                //   onTap: () => Navigator.pushNamed(
                //       context, ForgotPasswordScreen.routeName),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.orange),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: FlatButton(
                    height: 50,
                    color: Colors.orange[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Text(
                      "Log In".toUpperCase(),
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextFormField formInputConfirmPassword() {
    return TextFormField(
      onSaved: (newValue) => confirmPassword = newValue,
      // obscureText: true,
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Padding(
          padding: EdgeInsets.all(6.0),
          child: Icon(Icons.lock_outline),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please re-enter your Password';
        } else if (password != value) {
          return "Passwords don't match";
        }
        return null;
      },
    );
  }

  TextFormField formInputPassword() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      // obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your Password",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Padding(
          padding: EdgeInsets.all(6.0),
          child: Icon(Icons.lock_outline),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your Password';
        } else if (value.length < 8) {
          return "Password is too short";
        }
        return null;
      },
    );
  }

  TextFormField formInputEmail() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        suffixIcon: Padding(
          padding: EdgeInsets.all(6.0),
          child: Icon(Icons.alternate_email),
        ),
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your Email';
        } else if (!RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
          return "Please Enter Valid Email";
        }
        return null;
      },
    );
  }
}
