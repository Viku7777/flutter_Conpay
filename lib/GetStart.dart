import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white,
          ),
          child: Column(
            children: [
              SizedBox(
                height: mq.height * 0.06,
              ),
              Image.asset(
                "assets/getstart1.png",
                fit: BoxFit.fitWidth,
                width: mq.width - 40.91,

                // width: 200,
              ),
              Image.asset(
                "assets/getstart2.png",
                fit: BoxFit.fitWidth,
                width: mq.width - 24,
              ),
              Image.asset(
                "assets/getstart3.png",
                fit: BoxFit.fitWidth,
                width: mq.width - 40.91,
              ),
              SizedBox(
                height: mq.height * 0.02,
              ),
              const Text(
                "Buy & Sell Crypto in",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 30,
                    letterSpacing: -0.2,
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                "one app",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 28,
                    letterSpacing: -0.2,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: mq.height * 0.01,
              ),
              textstylewithcolorsdecoration(
                  "It's easier to make cryptocurrency",
                  16,
                  FontWeight.w400,
                  const Color(0xff757575)),
              textstylewithcolorsdecoration(
                  "transactions in your hand, wherever and",
                  16,
                  FontWeight.w400,
                  const Color(0xff757575)),
              textstylewithcolorsdecoration(
                  " whenever. Get the lowest fees ever!",
                  16,
                  FontWeight.w400,
                  const Color(0xff757575)),
              SizedBox(
                height: mq.height * 0.035,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: fullroundButton("Get Start", () {}),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
