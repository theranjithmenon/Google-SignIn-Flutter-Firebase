import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:test_firebase/google_signin_provider.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Lottie.asset("assets/109119-coding-slide.json"),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(250, 50),
                padding: const EdgeInsets.all(15)
              ),
                onPressed: () {
                  final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
                  provider.googleLogin();
                },
                icon: const FaIcon(FontAwesomeIcons.google),
                label: const Text("Sign in with Google")),
          ],
        ),
      )),
    );
  }
}
