import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/GetStart.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pinput/pinput.dart';

class VerificationLogin extends StatefulWidget {
  const VerificationLogin({super.key});

  @override
  State<VerificationLogin> createState() => _VerificationLoginState();
}

class _VerificationLoginState extends State<VerificationLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
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
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: mq.height * 0.04,
                ),
                mainlogo(),
                SizedBox(
                  height: mq.height * 0.04,
                ),
                const Text(
                  "Don’t worry we have many",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "ways for verification.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: mq.height * 0.06,
                ),
                Pinput(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Not receive Code yet?",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          letterSpacing: -0.2,
                          fontWeight: FontWeight.w400),
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
                  height: mq.height * 0.02,
                ),
                CheckboxListTile(
                  activeColor: const Color(0xffFE5958),
                  controlAffinity: ListTileControlAffinity.leading,
                  title: const Text(
                    "Don’t ask me again for verification on this browser",
                    style: TextStyle(
                        fontSize: 12,
                        letterSpacing: -0.2,
                        fontWeight: FontWeight.w400),
                  ),
                  value: true,
                  onChanged: (value) {},
                ),
                SizedBox(
                  height: mq.height * 0.03,
                ),
                fullroundButton("Continue", () {}),
                SizedBox(
                  height: mq.height * 0.03,
                ),
                textstyledecoration("Wana Verify from Phone Verification?", 16,
                    FontWeight.w400),
                SizedBox(
                  height: mq.height * 0.01,
                ),
                TextButton(
                    onPressed: () {
                      nextscreen(context, const GetStart());
                    },
                    child: textstylewithcolorsdecoration("Back to Waiting", 16,
                        FontWeight.w500, const Color(0xffFE5958)))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
