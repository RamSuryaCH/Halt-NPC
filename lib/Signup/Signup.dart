import 'package:flutter/material.dart';
import 'package:haltnpc/widgets/app_button_widget.dart';
import 'package:haltnpc/widgets/app_input_textfield_widget.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _firstnamecontroller = TextEditingController();
  TextEditingController _lastnamecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  bool? check = true;

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
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "images/logo2.png",
                width: 280,
                height: 280,
              ),
              SizedBox(
                height: 20,
              ),
              AppInputTextfieldWidget(
                controller: _firstnamecontroller,
                title: "First Name",
                hitText: "",
              ),
              SizedBox(
                height: 12,
              ),
              AppInputTextfieldWidget(
                controller: _lastnamecontroller,
                title: "Last Name",
                hitText: "",
              ),
              SizedBox(
                height: 12,
              ),
              AppInputTextfieldWidget(
                  controller: _emailcontroller,
                  title: "Email Address",
                  hitText: "hello@example.com"),
              SizedBox(
                height: 12,
              ),
              AppInputTextfieldWidget(
                  controller: _passwordcontroller,
                  title: "Password",
                  hitText: "********"),
              SizedBox(
                height: 14,
              ),
              CheckboxListTile(
                value: check,
                onChanged: (bool? value) {
                  setState(() {
                    check = value;
                  });
                },
                title: Text("I agree with terms & conditions"),
              ),
              SizedBox(
                height: 12,
              ),
              AppButtonWidget(
                title: "Signup",
                titleColour: Colors.black,
                buttonBackgroundColour: Colors.white,
                buttonBoaderColour: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).pushNamed("/signup");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
