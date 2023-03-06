import 'dart:developer';

import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/GetStart.dart';
import 'package:crypto/auth/SignUp/finalReview.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';

class ForgotNewPasswor extends StatefulWidget {
  bool isforgotpage;
  ForgotNewPasswor({super.key, required this.isforgotpage});

  @override
  State<ForgotNewPasswor> createState() => _ForgotNewPassworState();
}

class _ForgotNewPassworState extends State<ForgotNewPasswor> {
  final passwordcontroller = TextEditingController();
  final confirm = TextEditingController();
  bool showpassword = true;

  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: mq.height * 0.04,
        ),
        SizedBox(
          height: mq.height * 0.03,
        ),
        const Text(
          "Congragulations!",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24,
              letterSpacing: -0.2,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: mq.height * 0.01,
        ),
        const Text(
          "Just Make it Secure.",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24,
              letterSpacing: -0.2,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: mq.height * 0.1,
        ),
        Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Password";
                      }
                    },

                    controller: passwordcontroller,

                    obscureText: showpassword,
                    cursorColor: Colors.deepOrange,

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
                            borderSide: BorderSide(color: Colors.deepOrange)),
                        border: const OutlineInputBorder()),
                  );
                },
              ),
              SizedBox(
                height: mq.height * 0.01,
              ),
              const Text(
                "Confirm-Password",
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Password";
                      }
                    },

                    controller: confirm,
                    cursorColor: Colors.deepOrange,

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
                                    color: Colors.black54,
                                  )
                                : const Icon(
                                    Icons.visibility_off_outlined,
                                    color: Colors.black45,
                                  )),
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepOrange)),
                        border: const OutlineInputBorder()),
                  );
                },
              ),
            ],
          ),
        ),
        SizedBox(
          height: mq.height * 0.18,
        ),
        InkWell(
          onTap: () {
            if (key.currentState!.validate()) {
              widget.isforgotpage
                  ? nextscreen(context, const GetStart())
                  : nextscreen(context, const SignupFinalReview());
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
              "Next",
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
