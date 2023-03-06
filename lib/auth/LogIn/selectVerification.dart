import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/auth/LogIn/verificationlogin.dart';
import 'package:crypto/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Selectverification extends StatefulWidget {
  const Selectverification({super.key});

  @override
  State<Selectverification> createState() => _SelectverificationState();
}

class _SelectverificationState extends State<Selectverification> {
  String email = "arfi.ganteng@email.com";
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
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: mq.height * 0.04,
                  ),
                  Image.asset("assets/done.png"),
                  SizedBox(
                    height: mq.height * 0.04,
                  ),
                  const Text(
                    "Verify Your Identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 27,
                        letterSpacing: -0.2,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: mq.height * 0.04,
                  ),
                  const Text(
                    "Wait for authentication with the phone",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 12,
                        letterSpacing: -0.2,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: mq.height * 0.04,
                  ),
                  Image.asset("assets/Loader.png",
                      width: mq.width, fit: BoxFit.fitWidth),
                  SizedBox(
                    height: mq.height * 0.02,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(child: Divider()),
                            Text(
                              "   or   ",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  letterSpacing: -0.2,
                                  fontWeight: FontWeight.w500),
                            ),
                            Expanded(child: Divider())
                          ],
                        ),
                        SizedBox(
                          height: mq.height * 0.04,
                        ),
                        ListTile(
                          leading: const Icon(
                            Icons.email_rounded,
                            color: Color(0xffFE5958),
                          ),
                          title: const Text(
                            "Email code to",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                letterSpacing: -0.2,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                            email,
                            style: const TextStyle(
                                color: Colors.black45,
                                fontSize: 12,
                                letterSpacing: -0.2,
                                fontWeight: FontWeight.w400),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xffFE5958),
                          ),
                        ),
                        SizedBox(
                          height: mq.height * 0.02,
                        ),
                        const ListTile(
                          trailing: Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: Color(0xffFE5958),
                          ),
                          leading: Icon(
                            Icons.message_outlined,
                            color: Color(0xffFE5958),
                          ),
                          title: Text(
                            "Text code to ends with -94",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18,
                                letterSpacing: -0.2,
                                fontWeight: FontWeight.w500),
                          ),
                          subtitle: Text(
                              style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                  letterSpacing: -0.2,
                                  fontWeight: FontWeight.w400),
                              "Our text are free, but some service providers may apply usage charges in certain cases."),
                        ),
                        SizedBox(
                          height: mq.height * 0.02,
                        ),
                        const Divider(
                          color: Colors.black45,
                          height: 10,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don’t have an account?"),
                            TextButton(
                                onPressed: () {
                                  nextscreen(context, VerificationLogin());
                                },
                                child: const Text(
                                  "Register",
                                  style: TextStyle(color: Color(0xffFE5958)),
                                ))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
