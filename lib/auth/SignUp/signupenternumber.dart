import 'package:crypto/Helper/Widgets.dart';
import 'package:crypto/auth/SignUp/signup.dart';
import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignupEnterNumber extends StatefulWidget {
  const SignupEnterNumber({super.key});

  @override
  State<SignupEnterNumber> createState() => _SignupEnterNumberState();
}

class _SignupEnterNumberState extends State<SignupEnterNumber> {
  String completenumber = "";
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
          height: mq.height * 0.04,
        ),
        const Text(
          "All Done!",
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.black87,
              fontSize: 24,
              letterSpacing: -0.2,
              fontWeight: FontWeight.w500),
        ),
        const Text(
          "Just Verify Phone.",
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
        Row(
          children: [
            const Text(
              "Country",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: -0.2,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: mq.height * 0.04,
            ),
            const Text(
              "Phone",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  letterSpacing: -0.2,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: mq.height * 0.005,
        ),
        Form(
          key: key,
          child: IntlPhoneField(
            flagsButtonPadding: const EdgeInsets.only(left: 20),
            showCountryFlag: false,
            cursorColor: Colors.deepOrange,
            dropdownIconPosition: IconPosition.trailing,
            dropdownIcon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.deepOrange,
            ),
            onChanged: (value) {
              completenumber = value.completeNumber.toString();
            },
            decoration: const InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrange)),
                border: OutlineInputBorder()),
            initialCountryCode: 'IN',
          ),
        ),
        Center(
          child: Column(
            children: [
              SizedBox(
                height: mq.height * 0.03,
              ),
              textstylewithcolorsdecoration(
                  "Enter you phone number to verify in just",
                  16,
                  FontWeight.w400,
                  Colors.black54),
              SizedBox(
                height: mq.height * 0.01,
              ),
              textstylewithcolorsdecoration(
                  "one step. Don’t worry it will not take much",
                  16,
                  FontWeight.w400,
                  Colors.black54),
              SizedBox(
                height: mq.height * 0.01,
              ),
              textstylewithcolorsdecoration(
                  "time.", 16, FontWeight.w400, Colors.black54),
              SizedBox(
                height: mq.height * 0.015,
              ),
            ],
          ),
        ),
        SizedBox(
          height: mq.height * 0.20,
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
              "Verify and Recover",
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
