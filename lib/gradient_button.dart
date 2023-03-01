import 'package:flutter/material.dart';

class GradientButtonFb1 extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final double top;
  final double bottom;
  final double left;
  final double right;

  GradientButtonFb1(
      {required this.text,
      required this.onPressed,
      this.top = 20,
      this.bottom = 20,
      this.left = 70,
      this.right = 70,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 34, 123, 240);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color(0xffffffff);

    const double borderRadius = 15;

    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient:
                const LinearGradient(colors: [primaryColor, secondaryColor])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(EdgeInsets.only(
                right: right,
                left: left,
                top: top,
                bottom: bottom,
              )),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
              )),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(color: accentColor, fontSize: 16),
          ),
        ));
  }
}
