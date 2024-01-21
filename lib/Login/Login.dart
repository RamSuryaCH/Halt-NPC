import 'package:flutter/material.dart';
import 'package:haltnpc/widgets/app_button_widget.dart';
import 'package:haltnpc/widgets/app_input_textfield_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg2.jpeg"), fit: BoxFit.cover),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "images/logo2.png",
              width: 280,
              height: 280,
            ),
            SizedBox(
              height: 40,
            ),
            AppInputTextfieldWidget(
                controller: _emailcontroller,
                title: "Email Address",
                hitText: "hello@example.com"),
            SizedBox(
              height: 22,
            ),
            AppInputTextfieldWidget(
                controller: _passwordcontroller,
                title: "Password",
                hitText: "********"),
            SizedBox(
              height: 24,
            ),
            AppButtonWidget(
              title: "Login",
              titleColour: Colors.black,
              buttonBackgroundColour: Colors.white,
              buttonBoaderColour: Colors.transparent,
              onPressed: () {
                Navigator.of(context).pushNamed("/insta");
              },
            ),
            SizedBox(
              height: 12,
            ),
            AppButtonWidget(
              title: "Login with Instagram",
              titleColour: Colors.black,
              buttonBackgroundColour: Colors.white,
              buttonBoaderColour: Colors.transparent,
              onPressed: () {
                Navigator.of(context).pushNamed("/insta");
              },
            ),
          ],
        ),
      ),
    );
  }
}
