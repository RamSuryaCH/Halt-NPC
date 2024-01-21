import 'package:flutter/material.dart';
import 'package:haltnpc/widgets/app_button_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "images/logo2.png",
                width: 280,
                height: 280,
              ),
              Text(
                "An Halt to every NPC",
                style: TextStyle(fontSize: 26, color: Colors.white),
              ),
              SizedBox(
                height: 60,
              ),
              AppButtonWidget(
                title: "Login",
                titleColour: Colors.black,
                buttonBackgroundColour: Colors.white,
                buttonBoaderColour: Colors.transparent,
                onPressed: () {
                  Navigator.of(context).pushNamed("/login");
                },
              ),
              SizedBox(
                height: 40,
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
