import 'package:crypto/auth/forgot/enternewpassword.dart';
import 'package:crypto/auth/forgot/enternumber.dart';
import 'package:crypto/auth/forgot/enterotp.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final pagecontroller = PageController();

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: mq.height,
              width: mq.width,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 237, 211, 211),
                Color.fromARGB(255, 232, 229, 228),
              ])),
              child: Padding(
                padding: EdgeInsets.only(top: mq.height * 0.13),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Colors.white,
                  ),
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pagecontroller,
                    children: [
                      const ForgotEnteNumber(),
                      ForgotEnterOtp(isforgotpage: true),
                      ForgotNewPasswor(
                        isforgotpage: true,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: mq.height * 0.06,
              left: mq.width * 0.05,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.arrow_back),
              ),
            ),
            Positioned(
              top: mq.height * 0.07,
              left: mq.width / 2.25,
              child: SmoothPageIndicator(
                  effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: Colors.black,
                    dotColor: Colors.black38,
                  ),
                  controller: pagecontroller,
                  count: 3),
            )
          ]),
        );
      }),
    );
  }
}
