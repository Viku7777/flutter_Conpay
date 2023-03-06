import 'dart:developer';

import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/api/api.dart';
import 'package:crypto/GetStart.dart';
import 'package:crypto/auth/LogIn/selectVerification.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class EnterPassword extends StatefulWidget {
  String email;
  EnterPassword({super.key, required this.email});

  @override
  State<EnterPassword> createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
  bool remember = false;
  final passwordcontroller = TextEditingController();
  bool showpassword = true;
  final key = GlobalKey<FormState>();

  @override
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: mq.height * 0.04,
                      ),
                      SizedBox(
                        height: mq.height * 0.04,
                      ),
                      const Text(
                        "Got it!",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 24,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        children: [
                          const Text(
                            "We found you on",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 24,
                                letterSpacing: -0.2,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              GradientText("Con",
                                  style: const TextStyle(
                                    letterSpacing: -0.2,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24,
                                  ),
                                  colors: const [
                                    Color(0xffFE5958),
                                    Color(0xffFE9F7F)
                                  ]),
                              const Text(
                                "Pay",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    letterSpacing: -0.2,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: mq.height * 0.045,
                      ),
                      Form(
                        key: key,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: mq.height * 0.01,
                            ),
                            const Text(
                              "Password",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: mq.height * 0.01,
                            ),
                            StatefulBuilder(
                              builder: (context, recall) {
                                return TextFormField(
                                  cursorColor: Colors.deepOrange,

                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Please Enter Password";
                                    }
                                  },

                                  controller: passwordcontroller,

                                  obscureText: showpassword,
                                  // style: TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                      suffixIcon: IconButton(
                                          onPressed: () {
                                            showpassword = !showpassword;
                                            recall(() {});
                                          },
                                          icon: showpassword
                                              ? const Icon(
                                                  Icons.visibility_outlined,
                                                  color: Colors.black45,
                                                )
                                              : const Icon(
                                                  Icons.visibility_off_outlined,
                                                  color: Colors.black45,
                                                )),
                                      focusedBorder: const OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.deepOrange)),
                                      border: const OutlineInputBorder()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mq.height * 0.015,
                      ),
                      Center(
                        child: Column(
                          children: [
                            textstylewithcolorsdecoration(
                                "Enter you password to get start over",
                                16,
                                FontWeight.w400,
                                Colors.black54),
                            SizedBox(
                              height: mq.height * 0.015,
                            ),
                            textstylewithcolorsdecoration(
                                "ConPay.", 16, FontWeight.w400, Colors.black54),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: mq.height * 0.25,
                      ),
                      InkWell(
                        onTap: () async {
                          if (key.currentState!.validate()) {
                            await FingerApi().usefinger().then((value) {
                              if (value) {
                                nextscreen(context, const GetStart());
                              } else {
                                log("Finger Not Working");
                              }
                            });
                          }
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
                            "Login",
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
                          const Text("Don’t have an account?"),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Register",
                                style: TextStyle(color: Color(0xffFE5958)),
                              ))
                        ],
                      )
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
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back),
                    SizedBox(
                      width: mq.width * 0.01,
                    ),
                    textstyledecoration("Back", 16, FontWeight.w500)
                  ],
                ),
              ),
            )
          ]),
        );
      }),
    );
  }
}
