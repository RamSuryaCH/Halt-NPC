import 'package:flutter/material.dart';
import 'package:haltnpc/widgets/app_button_widget.dart';
import 'package:haltnpc/widgets/app_input_textfield_widget.dart';

class insta extends StatefulWidget {
  const insta({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<insta> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo1.png"),
              AppInputTextfieldWidget(
                  controller: _emailcontroller,
                  title: "",
                  hitText: "Phone number, username, or email"
                  ),
              SizedBox(
                height: 22,
              ),
              AppInputTextfieldWidget(
                  controller: _passwordcontroller,
                  title: "",
                  hitText: "Password"),
              SizedBox(height: 16),
              AppButtonWidget(
                title: "Log in",
                titleColour: Colors.white,
                buttonBackgroundColour: Colors.blue,
                buttonBoaderColour: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).pushNamed("/insta");
                },
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Handle forgot password button press
                },
                child: Text("Forgot password?"),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Handle sign up button press
                },
                child: Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
