import 'package:flutter/material.dart';
// import 'package:live_in/screens/forgot_password/forgot_password.dart';

import '../../../constants.dart';

class InputForgotPassword extends StatefulWidget {
  const InputForgotPassword({Key? key}) : super(key: key);

  @override
  _InputForgotPasswordState createState() => _InputForgotPasswordState();
}

class _InputForgotPasswordState extends State<InputForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          formInputEmail(),
          SizedBox(height: kDefaultPaddin),
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
                      "Continue".toUpperCase(),
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

  TextFormField formInputEmail() {
    return TextFormField(
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
