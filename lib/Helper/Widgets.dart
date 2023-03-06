import 'package:crypto/main.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

mainlogo() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        "assets/logo.png",
        height: 35.38,
        width: 33.59,
      ),
      Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          GradientText("Con",
              style: const TextStyle(
                letterSpacing: -0.2,
                fontWeight: FontWeight.w500,
                fontSize: 32,
              ),
              colors: const [Color(0xffFE5958), Color(0xffFE9F7F)]),
          const Text(
            "Pay",
            style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                letterSpacing: -0.2,
                fontWeight: FontWeight.w500),
          )
        ],
      )
    ],
  );
}

nextscreen(BuildContext context, dynamic screen) {
  return Navigator.push(context, MaterialPageRoute(
    builder: (context) {
      return screen;
    },
  ));
}

fullroundButton(String name, VoidCallback callback) {
  return InkWell(
    onTap: callback,
    child: Container(
      height: 50,
      width: mq.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(colors: [
            Color(0xffFE5958),
            Color(0xffFE9F7F),
          ])),
      child: Center(
          child: Text(
        name,
        style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            letterSpacing: -0.2,
            fontWeight: FontWeight.w500),
      )),
    ),
  );
}

textstyledecoration(String text, double size, dynamic weight) {
  return Text(
    text,
    style: TextStyle(fontSize: size, letterSpacing: -0.2, fontWeight: weight),
  );
}

textstylewithcolorsdecoration(
    String text, double size, dynamic weight, Color clr) {
  return Text(
    text,
    style: TextStyle(
        color: clr, fontSize: size, letterSpacing: -0.2, fontWeight: weight),
  );
}
