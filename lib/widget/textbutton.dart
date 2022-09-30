import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final Function() onpressed;
  final MaterialStatePropertyAll<Color> backgroundcolor;
  final String buttontext;
  final String myfont;
  final Color textcolor;
  final FontWeight textweight;

  MyTextButton(
      {Key? key,
      required this.onpressed,
      required this.backgroundcolor,
      required this.buttontext,
        required this.myfont,
        required this.textcolor,
        required this.textweight,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      style: ButtonStyle(
          backgroundColor: backgroundcolor,
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),
      child: Text(
        buttontext,
        style: TextStyle(
            color: textcolor,
            fontFamily: myfont,
            fontWeight: textweight,
        fontSize: 14),
      ),
    );
  }
}
