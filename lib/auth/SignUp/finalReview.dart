import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';

final signuppagecontroller = PageController();

class SignupFinalReview extends StatefulWidget {
  const SignupFinalReview({super.key});

  @override
  State<SignupFinalReview> createState() => _SignupFinalReviewState();
}

class _SignupFinalReviewState extends State<SignupFinalReview> {
  final passwordcontroller = TextEditingController();
  final confirm = TextEditingController();
  bool showpassword = true;
  List datatype = ["Full name", "Email", "Phone #", "Password"];
  List data = [
    "Vikrant",
    "V.jumriya9962gmail.com",
    "8697488888",
    "143@Vixhkey"
  ];
  String fullname = "";
  String email = "";
  String phone = "";
  String password = "";
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(builder: (context) {
        return Stack(children: [
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset("assets/illustration.png"),
                      const Text(
                        "Is this your Data?",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 32,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: mq.height * 0.02,
                      ),
                      const Text(
                        "Please check your information!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff757575),
                            fontSize: 15,
                            letterSpacing: -0.2,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: mq.height * 0.05,
                      ),
                      ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  textstyledecoration(
                                      datatype[index], 16, FontWeight.w600),
                                  textstylewithcolorsdecoration(data[index], 16,
                                      FontWeight.w400, const Color(0xff757575))
                                ],
                              ),
                              SizedBox(
                                height: mq.height * 0.02,
                              ),
                            ],
                          );
                        },
                      ),
                      SizedBox(
                        height: mq.height * 0.05,
                      ),
                      InkWell(
                        onTap: () async {},
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
                          const Text("No, its not mine?"),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Change something",
                                style: TextStyle(color: Color(0xffFE5958)),
                              ))
                        ],
                      )
                    ],
                  )),
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
              child: textstylewithcolorsdecoration(
                  "All Set?", 16, FontWeight.w500, const Color(0xff232323)))
        ]);
      }),
    );
  }
}
