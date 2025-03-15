import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String id = 'splashScreen';

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => const LoginPage(),
          ),
        );
      });
    });

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              kLogo,
              height: 100,
            ),
            const Text(
              'Scholar Chat',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontFamily: 'pacifico',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
