import 'package:crypto/auth/SignUp/signup.dart';
import 'package:crypto/auth/forgot/forgotPassword.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class ForgotEnterOtp extends StatefulWidget {
  bool isforgotpage;

  ForgotEnterOtp({super.key, required this.isforgotpage});

  @override
  State<ForgotEnterOtp> createState() => _ForgotEnterOtpState();
}

class _ForgotEnterOtpState extends State<ForgotEnterOtp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: mq.height * 0.08,
        ),
        const Text(
          "Last Step!",
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24,
              letterSpacing: -0.2,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Just Enter Code here.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24,
              letterSpacing: -0.2,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: mq.height * 0.05,
        ),
        Center(
          child: Pinput(
            submittedPinTheme: PinTheme(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffFE5958)))),
            keyboardType: TextInputType.number,
            length: 6,
            defaultPinTheme: PinTheme(
                height: 45,
                width: 45,
                textStyle: const TextStyle(fontSize: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54))),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Not receive Code yet?",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  letterSpacing: -0.2,
                  fontWeight: FontWeight.w500),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Resend",
                style: TextStyle(
                    color: Color(0xffFE5958),
                    fontSize: 14,
                    letterSpacing: -0.2,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
        SizedBox(
          height: mq.height * 0.35,
        ),
        InkWell(
          onTap: () async {
            widget.isforgotpage
                ? pagecontroller.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.bounceInOut)
                : signuppagecontroller.nextPage(
                    duration: const Duration(seconds: 1),
                    curve: Curves.bounceInOut);
          },
          child: Container(
            height: 50,
            width: mq.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(colors: [
                  Color(0xffFE5958),
                  Color(0xffFE9F7F),
                ])),
            child: const Center(
                child: Text(
              "Confirm",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: -0.2,
                  fontWeight: FontWeight.w500),
            )),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Already have an account?"),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(color: Color(0xffFE5958)),
                ))
          ],
        )
      ],
    );
  }
}
