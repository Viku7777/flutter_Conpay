import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/auth/SignUp/signup.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';

class RegisterAccount extends StatefulWidget {
  const RegisterAccount({super.key});

  @override
  State<RegisterAccount> createState() => _RegisterAccountState();
}

class _RegisterAccountState extends State<RegisterAccount> {
  final key = GlobalKey<FormState>();

  final emailphonecontroller = TextEditingController();
  final fullname = TextEditingController();
  String completenumber = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Container(
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: mq.height * 0.04,
                    ),
                    mainlogo(),
                    SizedBox(
                      height: mq.height * 0.06,
                    ),
                    const Text(
                      "Welcome here!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          letterSpacing: -0.2,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Wana Create an Account?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 24,
                          letterSpacing: -0.2,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: mq.height * 0.07,
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
                      height: mq.height * 0.07,
                    ),
                    Form(
                      key: key,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Full name",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                letterSpacing: -0.2,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: mq.height * 0.005,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Full Name";
                              }
                            },

                            controller: fullname,
                            cursorColor: Colors.deepOrange,

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
                    SizedBox(
                      height: mq.height * 0.135,
                    ),
                    InkWell(
                      onTap: () {
                        if (key.currentState!.validate()) {
                          nextscreen(context, const Signup());
                          ;
                          ;
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
                          "Continue",
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
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
