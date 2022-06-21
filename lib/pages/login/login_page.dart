import 'package:fast_delivery/routes/route.dart' as route;
import 'package:fast_delivery/widgets/descriptionText_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import '../../widgets/titleText_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(
                "assets/images/Fastsy.png",
                width: 120,
              ),
              const SizedBox(
                height: 20,
              ),
              const DescriptionText_widget(
                description: "Delivery Shop App",
              ),
              const SizedBox(
                height: 67,
              ),
              const TitleText_widget(title: "Lorem ipsum dolor sit\n amet"),
              const Spacer(),
              SizedBox(
                height: 60,
                width: 312,
                child: SignInButtonBuilder(
                  icon: Icons.email,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onPressed: () => Navigator.pushNamed(context, route.loginEmailPage),
                  backgroundColor: const Color(0xff04764E),
                  text: "Login With Email",
                ),
              ),
              const SizedBox(
                height: 38,
              ),
              SizedBox(
                height: 60,
                width: 312,
                child: SignInButton(
                  Buttons.FacebookNew,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onPressed: () {},
                  text: "Login With Facebook",
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                width: 312,
                child: SignInButton(
                  Buttons.Google,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: const Color(0xffD1D1D1)),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onPressed: () {},
                  text: "Login With Google",
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
