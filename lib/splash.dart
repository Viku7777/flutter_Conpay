import 'dart:async';
import 'dart:developer';

import 'package:crypto/auth/LogIn/LoginScreen.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            log("message");
            return const LogInScreen();
          },
        ));
      },
    );
  }

  battery() async {}
  final controller = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // tileMode: TileMode.repeated,
                colors: [
              Color(0xffFE9F7F),
              Color.fromARGB(205, 248, 153, 153),
              Color(0xffFE5958)
            ])),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/splash.png"),
            SizedBox(
              height: mq.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 10,
                ),
                GradientText("Con",
                    // gradientType: GradientType.linear,

                    style: const TextStyle(
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w500,
                      fontSize: 32,
                    ),
                    colors: const [
                      Color(0xffFE5958),
                      Color.fromARGB(255, 244, 144, 110)
                    ]),
                const Text(
                  "Pay",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w500),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
