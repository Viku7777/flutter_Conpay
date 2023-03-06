import 'package:crypto/auth/SignUp/signup.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';

class SignupEnterEmail extends StatefulWidget {
  const SignupEnterEmail({super.key});

  @override
  State<SignupEnterEmail> createState() => _SignupEnterEmailState();
}

class _SignupEnterEmailState extends State<SignupEnterEmail> {
  final emailphonecontroller = TextEditingController();
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: mq.height * 0.08,
        ),
        const Text(
          "Small Verification!",
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24,
              letterSpacing: -0.2,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Enter your Emaill here.",
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
        Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Email",
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
                    return "Please Enter Valid Email";
                  }
                },

                controller: emailphonecontroller,
                cursorColor: Colors.deepOrange,

                // style: TextStyle(fontSize: 20),
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepOrange)),
                    border: OutlineInputBorder()),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mq.height * 0.37,
        ),
        InkWell(
          onTap: () async {
            if (key.currentState!.validate()) {
              signuppagecontroller.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.bounceInOut);
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
              "Verify Now",
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
