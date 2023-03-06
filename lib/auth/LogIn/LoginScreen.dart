import 'dart:developer';

import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/auth/LogIn/enterpassword.dart';
import 'package:crypto/auth/SignUp/signupname.dart';
import 'package:crypto/auth/forgot/enternumber.dart';
import 'package:crypto/auth/forgot/forgotPassword.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final key = GlobalKey<FormState>();
  final emailphonecontroller = TextEditingController();
  bool remember = false;

  final passwordcontroller = TextEditingController();
  @override
  void initState() {
    emailphonecontroller.clear();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: mq.height * 0.10,
                ),
                mainlogo(),
                SizedBox(
                  height: mq.height * 0.05,
                ),
                const Text(
                  "Welcome back!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      letterSpacing: -0.2,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Please login to continue",
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
                SizedBox(
                  height: 56,
                  width: mq.width,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: Colors.black12),
                              borderRadius: BorderRadius.circular(100)),
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      icon: Image.asset("assets/google.png"),
                      label: const Text(
                        "login with google ",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                SizedBox(
                  height: mq.height * 0.06,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email / Phone",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          letterSpacing: -0.2,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: mq.height * 0.01,
                    ),
                    Form(
                      key: key,
                      child: Column(
                        children: [
                          TextFormField(
                            cursorColor: Colors.deepOrange,

                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Valid email Or number";
                              }
                            },

                            controller: emailphonecontroller,

                            // style: TextStyle(fontSize: 20),
                            decoration: const InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.deepOrange)),
                                border: OutlineInputBorder()),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: const Color(0xffFE5958),
                          value: remember,
                          onChanged: (value) {
                            setState(() {});
                            remember = !remember;
                          },
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 14,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                        onPressed: () {
                          nextscreen(context, const ForgotPassword());
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontSize: 14,
                              letterSpacing: -0.2,
                              fontWeight: FontWeight.w500,
                              color: Color(0xffFE5958)),
                        )),
                  ],
                ),
                SizedBox(
                  height: mq.height * 0.12,
                ),
                InkWell(
                  onTap: () {
                    if (key.currentState!.validate()) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return EnterPassword(
                              email: emailphonecontroller.text);
                        },
                      ));
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
                    const Text("Don’t have an account?"),
                    TextButton(
                        onPressed: () {
                          nextscreen(context, const RegisterAccount());
                        },
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
    );
  }
}
